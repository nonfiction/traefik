build:  ; docker build -t nonfiction/traefik:v2.4.8 .
push:   ; docker push nonfiction/traefik:v2.4.8 && docker tag nonfiction/traefik:v2.4.8 nonfiction/traefik:latest
shell:	; docker run -it --rm --entrypoint /bin/sh nonfiction/traefik:latest
