#!/bin/bash

pushd $HOME/.config/bash/banners 2>&1 1>/dev/null
universe=$(ls -d */ | sort -R | head -1 | sed 's/\///')
banner=$(ls $universe/ | sort -R | head -1)
cat $universe/$banner
popd 2>&1 1>/dev/null
