FROM golang:1.8

WORKDIR /go/src
RUN mkdir -p github.com/r0fls/example-webhook-admission-controller
COPY . ./github.com/r0fls/example-webhook-admission-controller
RUN go install github.com/r0fls/example-webhook-admission-controller
CMD ["example-webhook-admission-controller","--alsologtostderr","-v=4","2>&1"]
