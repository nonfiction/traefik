update: build push
build:  ; docker build -t nonfiction/traefik .
push:   ; docker push nonfiction/traefik
shell:	; docker run -it --rm --entrypoint /bin/sh nonfiction/traefik
