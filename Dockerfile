FROM golang:alpine AS builder

 ARG version

RUN apk update && \
    apk add --no-cache git
