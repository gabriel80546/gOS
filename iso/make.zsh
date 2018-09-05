#!/bin/zsh
#cria uma imagem de diskete
dd if=/dev/zero of=floppy.img bs=1024 count=1440

#copia o bootsector pra dentro dele
#conv=notrunc serve pra manter o tamanho do arquivo floppy.img
dd if=../iso.bin of=floppy.img conv=notrunc


cp floppy.img ISO/

#gera a iso
genisoimage -quiet -V 'MYOS' -input-charset iso8859-1 -o myos.iso -b floppy.img -hide floppy.img ISO/


#source: https://stackoverflow.com/q/34268518/5936421


