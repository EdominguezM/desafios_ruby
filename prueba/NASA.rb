
require "net/http"
require 'openssl'
require 'json'
#método que recibe la URL y el API key
api_key= 'FBmDf4qCfnILcNSlLQe5Rcfd4j4f8nedcOdO0Fy7'
pag= 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='

#hacemos la consulta para obtener la información
def request(url, key)
    pag= url+key
    uri = URI(pag)
    https = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(pag)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = https.request(request)
    JSON.parse response.read_body
end
data= request(pag, api_key)
#creación del archivo html
def list(total)
    html=""
    html +="<!DOCTYPE html>\n<html lang="'es'" dir="'ltr'">\n\t<head>\n\t\t<meta charset='utf-8'>\n\t\t<title>'Marte Pictures'</title>\n\t</head>\n
    <body style="'background-image:url(https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.elsetge.cat%2Fmyimg%2Ff%2F39-392561_wallpaper-espacio-con-estrellas-fondos-de-pantalla-para..jpg&f=1&nofb=1);' 'background-attachment:fixed;''text-align:center'">\t\n\t<nav style="'text-align:right'">\n\t\t<ul style"'text-align:right;' ">\n
    \t\t<li ><a href="'#contact'" style="'color:white;'">Contacto</a></li>\n\t\t</ul>\n\t</nav>\n
    <h1 style="'color:white'">Descrubre Marte y sus misterios<h1>\n
    \t<ul style="'columns:2;''display:inline-block;'">\n"
    total.each do |k|
        html += ("\t\t <li><img src=\"#{k[1]}\" width='500px' height='400px'style="'margin:20px padding:30px' 'list-style:none;'"></li>\n\t\t\t<p style="'color:white'">#{k[0]}</p>\n")       
    end
    html +="\t\t<ul/>\n\t</body>\n"
    html +="</html>"
    html
    File.write('index.html',html)
end
#proceso para limpiar el hash y trabajar los arreglos para obtener los links de imagenes y nombre de las camaras
def buid_web_page(arr)
    new_hash={}
    arr_cam=[]
    arr_img=[]
    hash= arr.to_h
    
    hash.each do |k,v|
        v.each do |q, b|
            q.delete("rover")
            new_hash.merge!(q)
            new_hash.delete("sol")
            new_hash.to_h
            new_hash.each do |l, m|             
                if l == ("camera")
                    arr_cam.push(m)
                elsif l== ("img_src")
                    arr_img.push(m)
                end
            end
        end
    end
    arr_img
    arr_name=[]
    arr_cam.each do |i|
        i.each do |l|
            if l[0] == "full_name"
               arr_name.push(l[1])
            end
        end
    end
    arr_name
    arr_img
    total=[]
    total= arr_name.zip(arr_img)
    list(total)
end
buid_web_page(data)



#filtrar nombre de cam y cantidad de fotos
def photos_count(hash)
    new_hash={}
    new_hash1={}
    new_arr=[]
    h={}
    hash.each do |k,v|
        v.each do |q, b|
            new_hash.merge!(q.select {|x| x == "camera"})
            new_hash.each do |l, m|
                m.each do |n, o|
                    new_hash1.merge!(m.select {|z| z == "full_name" })
                end
                new_hash1
            end
            new_hash1.each do |i, l|
                new_arr.push(l)
            end
        end
    end
    h= Hash.new(0)
    new_arr.each {|v| h.store(v, h[v]+1)}
    h
end

photos_count(data)