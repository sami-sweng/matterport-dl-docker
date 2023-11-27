# matterport-dl-docker
Forked project from [mu-ramadan](https://github.com/mu-ramadan/matterport-dl).<br>
A tool to download/archive [Matterport](https://matterport.com) using docker.

## Requirements
```bash
docker pull josetorronteras/matterport-dl
```

## Usage
To download a virtual tour:
```bash
docker run -t -v <local-directory>:/app/<matterport-id> josetorronteras/matterport-dl <matterport-id>
```

To revisit an archived virtual tour in browser:
```bash
docker run -t -p <local-port>:<container-port> -v <local-directory>:/app/<matterport-id> josetorronteras/matterport-dl <matterport-id> 0.0.0.0 8080
```
http://127.0.0.1:8080 in a browser

## Advanced Options
-   See [#advanced-options](https://github.com/mu-ramadan/matterport-dl#advanced-options)

## Dev
```bash
docker build -t matterport-dl .
```