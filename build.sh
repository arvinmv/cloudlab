#!/bin/bash

docker build -t dev-container:latest .

docker run -it --rm \
    -v "$(pwd)":/cloudlab \
    -v ~/.aws:/root/.aws \
    dev-container:latest