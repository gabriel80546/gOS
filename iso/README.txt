
#cria uma imagem de diskete
dd if=/dev/zero of=floppy.img bs=1024 count=1440

#copia o bootsector pra dentro dele
#conv=notrunc serve pra manter o tamanho do arquivo floppy.img
dd if=../tutstuts.bin of=floppy.img conv=notrunc


#gera a iso
genisoimage -quiet -V MYOS -input-charset iso8859-1 -o isado.iso -b floppy.img -hide floppy.img . 


#source: https://stackoverflow.com/q/34268518/5936421


