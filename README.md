# grimoire-minimal-example
minimal example of a working grimoire deployment

# Example debugging

- Go to `dev/darst` and execute: `[DRY=1] DOCKER_USER=lukaszgryglicki NS=grimoire-debug DEBUG=1 ./grimoire/grimoire.sh test install none yocto`.
- List deployed pods: `testk.sh -n grimoire-debug get po`.
- Shell into mordred pod (which is running sleep infinity now): `pod_shell.sh test grimoire-debug mordred-699d69549b-zghvm /bin/bash mordred`.
- Run: `mkdir /home/grimoire/debug`. Exit pod shell: `exit`.
- Go to `LF-Engineering/grimoire-minimal-example`, execute: `tar cf debug.tar *`.
- Copy debug data into the pod: `testk.sh -n grimoire-debug cp debug.tar mordred-699d69549b-zghvm:/home/grimoire/debug/debug.tar -c mordred`.
- Shell into mordred pod again: `pod_shell.sh test grimoire-debug mordred-699d69549b-zghvm /bin/bash mordred`, execute: `cd /home/grimoire/debug/ && tar xf debug.tar && rm -f debug.tar`.
