FROM ubuntu:20.04


ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt install -y golang-go

RUN mkdir -p /GoDictionaryAPI

WORKDIR / GoDictionaryAPI

COPY . .

RUN go get


EXPOSE 443
EXPOSE 80




ENTRYPOINT ["go", "run", "." ]

