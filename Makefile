tag := v1
update: build push
build: ; docker buildx build -t nonfiction/traefik:$(tag) .
push:	 ; docker push nonfiction/traefik:$(tag)
shell: ; docker run -it --rm --entrypoint /bin/sh nonfiction/traefik:$(tag)
