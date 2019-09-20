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
- Edit `mordred.ini` file, provide credentials for `[redacted]` values, for example change `[redacted]` into `[6415b462cd631241ef56132a612b546f2423e6cc]`.
- Edit `mordred.ini` file, provide all credentials/usernames etc for `[sortinghat]` section, use other deployment as an exampel or use for example: `./dev-analytics-api/project_config.sh test yocto` and see generated `mordred.ini` credentals data.
- You can get GitHub API credential from some other deployment, for example: `pod_shell.sh test g-lf-zephyr mordred-8c4d7d4f6-5vxdp /bin/bash mordred` and then `cat /config/mordred.ini | grep 'api-token'`.
- Edit `projects.json`, put you git/GitHub repo(s) there.
- Start arthurd: `./arthurd.sh &` and monitor its logs in`arthurd_logs/*.log`.
- Start arthurw: `./arthurw.sh &` and monitor its logs in`arthurw_logs/*.log`.
