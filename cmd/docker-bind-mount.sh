docker container create --name mongo-data --mount "type=bind,source=/home/mzzqq/mongo-data,destination=/data/db" -p 8080:27017 -e MONGO_INITDB_ROOT_USERNAME=reza -e MONGO_INITDB_ROOT_PASSWORD=12345 mongo:latest