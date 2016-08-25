# GAE Alpine Image
Google AppEngine Go SDK within an alpine image

## Setup

You can pull [docker hub](https://hub.docker.com/r/zadki3l/gae-go-alpine/)'s image:  
`docker pull zadki3l/gae-go-alpine`  

Or build your own one:  
`docker pull zadki3l/gae-go-alpine`  

## Run

Move to `app.yaml` folder and run:  
`docker run -it -v ./:/app -w /app zadki3l/gae-go-alpine goapp [what ever you want]`
