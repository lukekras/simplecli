# as builder as we are using this dockerfile for just building
FROM golang:1.24.1 AS builder

# Work directory
WORKDIR /simplecli

# Copy the files from the current directory to the working directory
COPY . .

# Download dependencies
# RUN go mod download

# Build simplecli
RUN go build -o simplecli

# Define an entrypoint
ENTRYPOINT ["./simplecli"]
