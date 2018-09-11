#!/usr/bin/env bash

baseUrl='https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1'
version='protobuf-all-3.6.1.zip'
destination='$HOME/Downloads'

echo "getting protobuf"

wget "$baseUrl/$version" -N -P "$destination"

echo "moving protobuf to /usr/local/bin. Permission required"
sudo unzip "$destination/$version" -d /usr/local/bin

echo "getting grpc-gateway"

go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway
go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger
go get -u github.com/golang/protobuf/protoc-gen-go
