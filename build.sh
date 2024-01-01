docker build -t budsx/godocker .

docker container create --name godocker -p 8080:3000 budsx/godocker

docker container start godocker