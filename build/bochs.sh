rm /home/gabriel/lks/osdev/.*.swp
rm /home/gabriel/lks/osdev/.*.swo
clear
echo -e "\033[1;35m./compile.sh\033[0m"
./compile.sh | grep x | :
echo -e "\033[1;35m./bochs.sh\033[0m"
cd ..
rm iso.bin
cp kernel.bin iso.bin
cd iso/
./make.sh
echo -e "\033[1;36mbochs\033[0m"
#bochs 'ata1-master:  type=cdrom, path=/home/gabriel/lks/osdev/iso/myos.iso, status=inserted' 'boot: cdrom' -q -rc /home/gabriel/lks/osdev/build/bochs.sh.txt
bochs 'ata1-master:  type=cdrom, path=/home/gabriel/lks/osdev/iso/myos.iso, status=inserted' 'boot: cdrom' #-q
#cp -r ../*.gex /media/gabriel/GABRIEL/
