cd files-bochs
./bochs.zsh
./init-parse.zsh
cd ..
bochs -f files-bochs/bochsrc.txt -rc files-bochs/init.bochs
