FROM golang as build
COPY main.go main.go
RUN go build -o main main.go

FROM scratch
COPY --from=build /go/main /main
CMD [ "/main" ]
