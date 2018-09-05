#!/bin/zsh
rm /home/gabriel/lks/osdev/.*.swp
rm /home/gabriel/lks/osdev/.*.swo
clear
echo -e "\033[1;35m./compile.sh\033[0m"
cd ..
./compile.zsh
echo -e "\033[1;35mmaking iso\033[0m"
cd ..
rm iso.bin
cp kernel.img iso.bin
cd iso/
./make.zsh
rm ../iso.bin
#echo -e "\033[1;36mbochs\033[0m"
#bochs 'ata1-master:  type=cdrom, path=/home/gabriel/lks/osdev/iso/myos.iso, status=inserted' 'boot: cdrom' -q -rc /home/gabriel/lks/osdev/build/bochs.sh.txt
#bochs -f bochsrc.txt
