
require "net/http"
require 'openssl'
require 'json'
#método que recibe la URL y el API key
api_key= 'FBmDf4qCfnILcNSlLQe5Rcfd4j4f8nedcOdO0Fy7'
pag= 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='


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

def list(arr)
    new_arr=[]
    html=""
    html +="<!DOCTYPE html>\n<html lang="'es'" dir="'ltr'">\n\t<head>\n\t\t<meta charset='utf-8'>\n\t\t<title>'Martes Pictures'</title>\n\t</head>\n
    <body style="'background-image:url(https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.elsetge.cat%2Fmyimg%2Ff%2F39-392561_wallpaper-espacio-con-estrellas-fondos-de-pantalla-para..jpg&f=1&nofb=1);' 'background-attachment:fixed;''text-align:center'">\t\n\t<nav>\n\t\t<ul>\n
    \t\t<li><a href="'#ubicacion'">Ubicación</a></li>\n\t\t</ul>\n\t<nav>\n
    <h1>Descrubre Martes y sus misterios<h1>\n
    \t<ul data-columns="'2'"style="'columns:2;'">\n"
    arr.each do |k|
        html += ("\t\t <li><img src=\"#{k}\" width='700px' height='600px'style="'margin:10px padding:20px'"></li>\n")       
    end
    html +="\t\t<ul/>\n\t</body>\n"
    html +="</html>"
    print html
    File.write('index.html',html)
end

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
    arr_cam.each do |i|
        i.each do |l|
             l
        end
    end
    list(arr_img)
end
buid_web_page(data)
