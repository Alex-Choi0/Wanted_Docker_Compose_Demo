# 사용할 아파치 이미지(2.4.58)
# 공식 아파치 이미지 : https://hub.docker.com/_/httpd
FROM httpd:2.4.58

# 실제 HTML파일은 ./public-html에 들어있다. 이것을 apache2에 반영하도록 htdocs폴더에 복사한다.
# 기존 index.html파일은 덮어 씌워진다.
COPY ./public-html/ /usr/local/apache2/htdocs
