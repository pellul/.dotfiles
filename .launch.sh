#!/bin/bash

for i in `ls -d -- */`
do stow ${i};
done;