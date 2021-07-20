#!/bin/bash

pushd $HOME/.emacs.d/elpa > /dev/null

# get all the directories containing an .el file
folders=$(
    find . -maxdepth 2 -mindepth 2 -name "*.el" -exec dirname {} \; |
    uniq |
    sed -E "s/^\.\///;s/-[0-9.\-]+$//;" |
    sort
)

for f in $folders
do
    echo ${f}
    #emacs --batch --eval "(defconst pkg-to-install '$f)"
done

popd > /dev/null
