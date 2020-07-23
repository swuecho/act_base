# act image with docker and docker-compose

```
ack -l # list jobs
```

### pull image

```
docker pull echowuhao/act_base:latest
```

### run job `run_backend`

```
act -P ubuntu-latest=echowuhao/act_base -j run_backend
```

PS: ubuntu-latest is the value of run_on in your workflow yml.
   It is possible to swith `ubuntu-latest` with other image name.


