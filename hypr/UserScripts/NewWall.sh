#!/bin/bash

substitue_string=$(echo "$1" | sed 's/....$//')

mogrify -format png $1
mv "$substitue_string.png" ~/wallpaper/$2.png
