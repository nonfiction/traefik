# traefik image for nonfiction's Platform

This extends `traefik:v2.4.8` with `openssh` & `/etc/ssh/ssh_config`. 

Passing an environment variable `ROOT_PRIVATE_KEY` as allows Traefik to connect 
to a Docker daemon [via SSH](https://doc.traefik.io/traefik/providers/docker/).


## Makefile commands:  

```
make update
make build
make push
make shell
```

## Related Repositories
- [nonfiction/platform](https://github.com/nonfiction/platform)
