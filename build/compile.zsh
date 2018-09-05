#!/bin/zsh

cd ..
sources=($(ls | grep gex | grep '[0-9]'))
i=0
while [[ $i != ${#sources} ]]; do
	i=$(( i + 1 ))
	echo $sources[$i]
	if [[ $i == 1 ]]; then
		rm kernel.img
		gex $sources[$i] temp.img
		cat temp.img > kernel.img
	else
		gex $sources[$i] temp.img
		cat temp.img >> kernel.img
	fi
done
rm temp.img
