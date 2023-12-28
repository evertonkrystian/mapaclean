#!/bin/bash

#git submodule add -b master https://github.com/govce/plugin-AldirBlanc.git plugins/AldirBlanc

for i in $(cat submodules)
    do
        git submodule add -b $(echo $i | cut -d ";" -f 1) $(echo $i | cut -d ";" -f 2) $(echo $i | cut -d ";" -f 3)
        # git submodule deinit -f $(echo $i | cut -d ";" -f 3)
        # rm -rf .git/modules/$(echo $i | cut -d ";" -f 3)
        # git rm -f $(echo $i | cut -d ";" -f 3)
    done