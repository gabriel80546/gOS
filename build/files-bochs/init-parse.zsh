#!/bin/zsh
rm init.bochs
cat init.bochs.zsh | grep -v "#" > init.bochs
