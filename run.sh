VERSION=1
NAME=sickrage
IMGNAME=networkbytes/$NAME:v$VERSION

docker rm $NAME

docker run \
--link transmission:transmission \
-v /etc/localtime:/etc/localtime:ro \
-v /mnt/share/Media/Transmission/Completed/:/Downloads \
-v /mnt/share/Media/TV:/TV \
-v $PWD/config:/config \
-p 8081:8081 \
-it \
--privileged=true \
--name $NAME \
$IMGNAME

