#!/bin/bash

download_links="downloadLinksJpg.txt"
download_links_filter="ad2atFrames.txt"
output="downloadLinksJpgAd2at.txt"

> "$output"

while IFS= read -r ligne; do
    echo $ligne
    grep "$ligne" "$download_links" >> "$output"
done < "$download_links_filter"