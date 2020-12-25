!/bin/bash
docker stop tochekcont1
docker rm tochekcont1
docker build -t testimg .
docker run -i --name tochekcont1 -p 5050:5050 testimg /bin/bash
docker start tochekcont1
docker run -it --name tochekcont1 testimg  /bin/bash
docker exec tochekcont1 ./startup.sh