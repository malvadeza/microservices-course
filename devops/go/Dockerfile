# Starting image from golang to compile code
FROM golang:1.14.3-alpine3.11 AS builder

# Compiling our go code
WORKDIR /go/src/app
COPY code-education-rocks.go .
RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o code-education-rocks

# Building final image with minimal content
FROM scratch

# Copying binary from previous stage
COPY --from=builder /go/src/app/code-education-rocks /

# Running it as entrypoint
ENTRYPOINT [ "/code-education-rocks" ]
