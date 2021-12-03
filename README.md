# IPMICFG-DOCKER

This is a docker container to save the effort of downloading and extracting the [Supermicro IPMI tool](https://www.supermicro.com/SwDownload/SwSelect_Free.aspx?cat=IPMI) on your server. You cannot curl the tool so this exists.


## How to run

```
docker run -it --privileged m08y/ipmicfg-docker /bin/bash
```

## Gotchas

- This docker image uses version `1.33.0` of the tool. I'll update it when I next look at this contianer if there is an update available.
- This container MUST be run in privileged mode
