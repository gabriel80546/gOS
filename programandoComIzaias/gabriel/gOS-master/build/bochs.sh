rm /home/gabriel/lks/osdev/.*.swp
rm /home/gabriel/lks/osdev/.*.swo
clear
echo -e "\033[1;35m./compile.sh\033[0m"
./compile.sh | grep aaaaaaabbbbbbbbbccccccddddddd
echo -e "\033[1;35m./bochs.sh\033[0m"
cd ..
rm iso.bin
cp kernel.bin iso.bin
cd iso/
./make.sh
echo -e "\033[1;36mbochs\033[0m"
bochs -q -rc /home/gabriel/lks/osdev/build/bochs.sh.txt
