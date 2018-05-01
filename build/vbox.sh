rm /home/gabriel/lks/osdev/.*.swp
rm /home/gabriel/lks/osdev/.*.swo
clear
echo -e "\033[1;35m./compile.sh\033[0m"
./compile.sh | grep aaaaaaabbbbbbbbbccccccddddddd
echo -e "\033[1;35m./vbox.sh\033[0m"
cd ..
rm iso.bin
cp kernel.bin iso.bin
cd iso/
./make.sh
echo -e "\033[1;36mvirtualbox --startvm myos\033[0m"
virtualbox --startvm myos
