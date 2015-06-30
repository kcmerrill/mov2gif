#!/usr/bin/env bash
while true; do
    for movie in /videos/*
    do
        doneme=$(basename "$movie")
        extension="${movie##*.}"
        filename="${movie%.*}"
        if [ ! -f "$filename.gif" ]; then
            ffmpeg -i $movie -qscale 0 -r 16 -filter:v "setpts=1*PTS" $filename.gif
        fi
    done
    sleep 10
done

