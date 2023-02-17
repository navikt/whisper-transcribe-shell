#!/bin/bash

cd whisper.cpp

# Convert all files in data folder to .wav
mkdir -p output;
for i in ./data/*; do
  f=$(echo "${i##*/}");
  filename=$(echo $f | cut  -d'.' -f 1);
  ffmpeg -i "$i" -acodec pcm_s16le -ac 1 -ar 16000 "./output/$(echo $filename).wav";
done

# Transcribe all .wav to .vtt, LANGUAGE IS SET TO NORWEGIAN
for i in output/*.wav; do ./main -m ./models/ggml-large.bin -l no --output-vtt -f "$i"; done