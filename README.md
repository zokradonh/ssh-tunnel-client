# SSH tunnel client

Creates an SSH tunnel to another SSH server. Companion for zokradonh/ssh-tunnel-server.

Usage
=======

Before creating the container create your private key with `openssl` without passphrase.
Also get the fingerprint of the SSH server via `retrieve-host-fingerprint.sh`.

docker-compose.yml
=======

```YAML
version: '2'

services:
  tunnel:
    image: zokradonh/ssh-tunnel-client
    restart: always
    environment: 
      - "TUNNELHOST=someserver.tld"
      - "TUNNELHOSTPORT=22"
      - "TARGETHOST=${TARGETHOST}"
      - "TARGETPORT=389"
      - "LISTENPORT=389"
      - "TUNNELUSER=userOnTunnelHost"
    volumes:
      - ./myprivate.key:/root/private.key
      - ./known_hosts:/root/.ssh/known_hosts
```
Replace myprivate.key with filename of your real key.

##### TUNNELHOST
- => specify hostname of target SSH server.

##### TUNNELHOSTPORT
- => specify port of target SSH server.

##### TARGETHOST
- => specify target hostname that the target SSH server should connect to.

##### TARGETPORT
- => specify target port that the target SSH server should connect to.

##### LISTENPORT
- *empty* => using TARGETPORT as LISTENPORT
- => specify port to listen to on local side.

##### LISTENHOST
- *empty* => listens locally on `0.0.0.0`
- => specify address to locally bind


