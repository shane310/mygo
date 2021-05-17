FROM golang:latest
LABEL maintainer="362791939@qq.com"

ENV WORKDIR /var/www/skill-score

RUN go env -w GOPROXY=https://goproxy.cn
RUN go get -u -v github.com/gogf/gf

RUN wget https://goframe.org/cli/linux_amd64/gf && chmod +x gf && ./gf install
EXPOSE 8080