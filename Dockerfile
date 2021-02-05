# Usage
# podman run -d --rm \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME/Pictures:/root/Pictures \
#	--name gimp \
#	localhost/gimp
#
FROM alpine:latest
LABEL maintainer "Akira Heid <akira710@protonmail.com>"

RUN apk add --no-cache --no-progress gimp

ENTRYPOINT ["gimp"]
