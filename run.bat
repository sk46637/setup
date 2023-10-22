docker kill pc
docker rm pc
docker rmi pc
docker build . -f new.dockerfile -t pc
docker run -dit --name pc pc bash
docker attach pc