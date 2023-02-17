#!/bin/bash

cd whisper.cpp

bash ./models/download-ggml-model.sh large
make large

mkdir data