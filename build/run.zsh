#/bin/zsh
rm /home/gabriel/lks/osdev/.*.swp
rm /home/gabriel/lks/osdev/.*.swo
clear
echo "\033[1;35m./compile.sh\033[0m"
./compile.zsh

echo "\033[1;36mqemu-system-i386 $projeto\033[0m"
qemu-system-i386 ../kernel.img 2>&1 >/dev/null | :
