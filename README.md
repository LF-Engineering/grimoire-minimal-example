# grimoire-minimal-example
minimal example of a working grimoire deployment

# Example debugging

- Go to `dev/darst` and execute: `DOCKER_USER=lukaszgryglicki NS=grimoire-debug DEBUG=1 ./grimoire/grimoire.sh test install none yocto`.
- List deployed pods: `testk.sh -n grimoire-debug get po`.
- Shell into mordred pod (which is running sleep infinity now): `pod_shell.sh test grimoire-debug mordred-699d69549b-zghvm /bin/bash mordred`.
- Run: `mkdir debug`.
- Go to `LF-Engineering/grimoire-minimal-example`
