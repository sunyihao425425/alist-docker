rm alist-linux-musl-amd64.tar.gz
wget https://github.com/alist-org/alist/releases/download/v3.16.3/alist-linux-amd64.tar.gz
tar -zxvf alist-linux-amd64.tar.gz
rm alist-linux-amd64.tar.gz
chmod +x alist

echo FROM scratch > Dockerfile
echo ADD ./ / >> Dockerfile
echo EXPOSE 5244 >> Dockerfile
echo CMD [\"/alist\",\"server\",\"--no-prefix\"] >> Dockerfile

./alist admin
./alist server
