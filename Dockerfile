FROM golang:latest AS builder

COPY fullcycle.go .
RUN go build fullcycle.go

FROM scratch
WORKDIR /go
COPY --from=builder go/fullcycle .
ENTRYPOINT [ "./fullcycle" ]