# GAE Alpine Image

Google AppEngine Go SDK within an alpine image

`docker pull zadki3l/gae-go-alpine`

Move to `app.yaml` folder and run:

`docker run -it -v ./:/app -w /app zadki3l/gae-go-alpine goapp get .`
