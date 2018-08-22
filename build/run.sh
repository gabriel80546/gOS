#gex kernel.gex kernel.bin
#gex hello.gex hello.bin
#mate-terminal -e "qemu-system-i386 kernel.bin"
#xfce4-terminal -e "qemu-system-i386 kernel.bin"
#xterm -e "qemu-system-i386 hello.bin"
#gnome-terminal -e "qemu-system-i386 kernel.bin"
rm /home/gabriel/lks/osdev/.*.swp
rm /home/gabriel/lks/osdev/.*.swo
clear
echo -e "\033[1;35m./compile.sh\033[0m"
./compile.sh | grep x | :

echo -e "\033[1;35m./run.sh\033[0m"

projeto=`cat projeto.add`
projeto="../$projeto"
echo -e "\033[1;36mqemu-system-i386 $projeto\033[0m"
qemu-system-i386 $projeto 2>&1 >/dev/null | :
