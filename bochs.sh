sh compile.sh
rm print.bin
cp kernel.bin print.bin
#cp hello.bin print.bin
cd iso/
#xfce4-terminal -e "sh make.sh"
#gnome-terminal -e "sh make.sh"
mate-terminal -e "sh make.sh"
cd ..
#xfce4-terminal -e "bochs"
#gnome-terminal -e "bochs"
mate-terminal -e "bochs"
