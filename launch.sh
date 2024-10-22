#!/bin/bash

for i in `ls -d -- */`
do stow ${i} --ignore=\'dotfile-setup\\.sh\';
done;