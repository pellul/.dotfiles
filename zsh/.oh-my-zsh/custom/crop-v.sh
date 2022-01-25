#!/bin/bash

filename=$1
convert $filename -crop 2x1@ "${filename%%.*}_%d.${filename#*.}"

