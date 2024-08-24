#!/bin/bash

docker build -t dev-container:latest .

docker run -it dev-container:latest