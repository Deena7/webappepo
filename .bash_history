dd if=/dev/zero of=/swapfile bs=5MB count=1024
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
free -h
exit
ls
tar -xvzf 'Document from prasanth.zip'
mv 'Document from prasanth.zip' project.zip
ls
apt install unzip -y
ls
unzip project.zip
ls
cd codethon
ls
cd shop
ls
cd ..
cd -i ewos 
cd EWOS
ls
cd ..
cd shop
ls
vi Dockerfile
ls
nano docker-compose.yml
apt search docker-compose -y
apt install docker-compose -y
ls
docker build -t shop_backend .
docker run -d -p 8000:8000 shop_backend
Dockerfile
vi Dockerfile
ls
docker build --no-cache -t shop_backend .
docker ps
docker run -d -p 8000:8000 shop_backend
docker ps
docker exec -it 7ed622059455 bash
python manage.py runserver 0.0.0.0:8000
docker ps
docker run -d   --name mysql_db   -e MYSQL_ROOT_PASSWORD=rootpass   -e MYSQL_DATABASE=shopdb   -e MYSQL_USER=shopuser   -e MYSQL_PASSWORD=shoppass   -p 3306:3306   mysql:8
docker logs mysql_db | grep "ready for connections"
ls
cd shop
ls
vi settings.py
cd ..
ls
docker ps
cd shop
vi settings.py
docker network create mynetwork
docker run -d --name mysql_db --network mynetwork   -e MYSQL_ROOT_PASSWORD=rootpass   -e MYSQL_DATABASE=shopdb   -e MYSQL_USER=shopuser   -e MYSQL_PASSWORD=shoppass   mysql:8
docker run -d --name shop_backend --network mynetwork   -p 8000:8000 shop_backend
docker run -d --name mysql_db --network mynetwork   -e MYSQL_ROOT_PASSWORD=rootpass   -e MYSQL_DATABASE=shopdb   -e MYSQL_USER=shopuser   -e MYSQL_PASSWORD=shoppass   mysql:8
docker ps
docker rm -f mysql_db
docker run -d   --name mysql_db   -e MYSQL_ROOT_PASSWORD=rootpass   -e MYSQL_DATABASE=shopdb   -e MYSQL_USER=shopuser   -e MYSQL_PASSWORD=shoppass   -p 3306:3306   mysql:8
docker logs mysql_db | grep "ready for connections"
clear
docker ps
docker network create shop_network
docker network connect shop_network mysql_db
docker network connect shop_network shop_backend
ls
vi settings.py
cd ..
ls
docker build -t shop_backend .
docker rm -f shop_backend
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   shop_backend
docker exec -it shop_backend bash
python manage.py migrate
docker build -t shop_backend .
docker ps | grep 8000
docker stop 7ed622059455
docker rm 7ed622059455
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   shop_backend
docker ps | grep 8000
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   shop_backend
docker stop shop_backend
docker rm shop_backend
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   shop_backend
docker ps
docker logs -f shop_backend | head -20

ls
cd shop
ls
cd ..
ls
cd ..
ls
cd EWOS
ls
cd ..
cd -
cd shop
ls
cd shop
ls
cd ..
ls
vi requirements.txt
vi Dockerfile
ls
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   shop_backend
docker logs -f shop_backend | head -30
docker exec -it shop_backend bash
docker restart shop_backend
docker exec -it shop_backend bash
ls
cd shop
ls
vi setting.py
vi settings.py
docker ps
docker exec -it shop_backend bash
docker logs -f shop_backend | tail -n 50
ls
vi settings.py
docker exec -it shop_backend bash
cd /app/shop
nano settings.py
ls
docker restart shop_backend
vi settings.py\
vi settings.py
docker restart shop_backend
vi settings.py
cd ..
ls
docker compose down
docker compose build
docker compose up -d
docker-compose -d down
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   shop_backend
docker exec -it shop_backend bash
ls
cd
cd codethon
ls
cd EWOS
ls
cd ..
ls
cd shop
ls
cd media
ls
cd products
ls
cd ..
ls
cd media
ls
cd products
ls
pwd
cd ..
ls
cd ..
ls
cd shop
ls
vi settings.py
cd ..
ls
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media/products:/app/media/products   shop_backend
docker rm -f shop_backend
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media/products:/app/media/products   shop_backend
docker ps
ls
cd grocery
ls
cd templates
ls
cd ..
ls
apt install tree -y
ls
tree
cd groceryclear
clear
ls
cd grocery
ls
cd ..
clear
ls
cd grocery
ls
cd templates
ls
cd ..
cd templatetags
ls
cd ..
cd static
ls
cd assets
ls
cd ..
ls
cd shop
ls
vi settings.py
ls
cd ..
find urls.py
find / urls.py
find /codethon urls.py
find /root/codethon urls.py
find /root/codethon urls
clear
ls
cd shop
ls
vi urls.py
cd ..
ls
docker restart shop_backend
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   shop_backend
docker ps
docker ps -a
docker logs shop_backend
cd shop
ls
vi settings.py
docker exec -it shop_backend python manage.py collectstatic --noinput
docker ps
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   shop_backend
docker rm -f shop_backend
docker build -t shop_backend .
ls
cd ..
ls
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   shop_backend
docker ps
docker rm -f shop_backend
cd /root/codethon/shop
docker rm -f shop_backend
docker build -t shop_backend -f Dockerfile.backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/grocery/static:/app/grocery/static   shop_backend
docker build -t shop_backend -f Dockerfile.backend .
ls
docker build -t shop_backend -f Dockerfile .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/grocery/static:/app/grocery/static   shop_backend
docker ps
docker rm -f shop_backend
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/grocery/static:/app/grocery/static   shop_backend
docker ps
ls
cd media
ls
cd products
ls
docker ps
docker rm -f shop_backend
docker ps
docker build -t shop_backend -f Dockerfile .
cd ..
ls
docker build -t shop_backend -f Dockerfile .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media/products:/app/media   -v /root/codethon/shop/grocery/static:/app/grocery/static   shop_backend
cd media/products
ls
cd ..
cd shop
ls
vi settings.py
cd ..
s
ls
cd -
ls
vi urls.py
docker rm -f shop_backend
cd ..
ls
docker build -t shop_backend -f Dockerfile .
docker ps
docker logs e754263d5c69
ls
cd shop
ls
vi settings.py
vi urls.py
cd .
cd ..
ls
cd grocery
ls
cd templates
ls
cd ..
cd static
ls
cd assets
ls
cd milksection
ls
cd ..
ls
cd sho
cd shop
ls
vi settings.py
vi urls.py
vi settings.py
ls
cd ..
ls
cd grocery
ls
cd templates
ls
vi products1.html
docker ps
docker rm -f e754263d5c69
docker images
cd ..
ls
cd ..
ls
docker build -t shop_backend -f Dockerfile .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media
docker build -t shop_backend -f Dockerfile .
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   shop_backend
ls
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   shop_backend
ls'
'
ls
cd codethon
ls
cd EWOS
ls
cd ..
cd shop
ls
cd groceey
cd grocery
ls
vi views.py
ls
cd codethon
ls
cd EWOS
ls
cd ..
cd shop
ls
cd shop
ls
vi urls.py
cat urls.py
vi urls.py
ls
vi urls.py
cd ..
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/static:/app/static   shop_backend
docker logs -f shop_backend
ls
cd shop
ls
vi urls.py
cd ..
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/static:/app/static   shop_backend
docker ps
docker logs 27f515234dff
docker exec -it shop_backend /bin/bash
netstat -tulpn | grep 8000
apt install net-tools
docker exec -it shop_backend /bin/bash
docker ps
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/grocery/static:/app/grocery/static   shop_backend
docker exec -it shop_backend /bin/bash
docker stop shop_backend
docker rm shop_backend
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/grocery/static:/app/grocery/static   shop_backend
docker ps
docker logs fb4980b7c3ce
cd shop
ls
vi settings.py
cd ..
docker rm -f shop_backend
docker build -t shop_backend .
docker run -d   --name shop_backend   --network shop_network   -p 8000:8000   -v /root/codethon/shop/media:/app/media   -v /root/codethon/shop/grocery/static:/app/grocery/static   shop_backend
tree /root/codethon
tree | print > file1
tree | echo > file1
ls
cat file1
tree > file1
cat file1
ls
cp file1 /home/ubuntu
exit
