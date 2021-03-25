 #!/bin/bash
APP=vsa-app
PORT=8010

echo '[1/3] Removing the container...'
docker ps -q --filter "name=${APP}" | grep -q . && docker stop ${APP}
docker rm -fv ${APP}

echo '[2/3] Building the container...'
docker build -t diegoling/${APP} .

echo '[3/3] Running the container...'
docker run --name ${APP} -p ${PORT}:3000 -d diegoling/$APP
