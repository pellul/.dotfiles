#!/bin/bash

filename=$1
convert $filename -crop 1x2@ "${filename%%.*}_%d.${filename#*.}"
