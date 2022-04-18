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

# RUN curl -O https://storage.googleapis.com/golang/go1.13.5.linux-amd64.tar.gz

# RUN tar -xvf go1.13.5.linux-amd64.tar.gz

# RUN mv go /usr/local

# # RUN subl ~/.profile

# RUN export GOPATH=$HOME/work

# RUN export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# RUN source ~/.profile

