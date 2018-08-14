clear
echo -e "\033[1;35m./compile.sh\033[0m"
projeto=`cat projeto.add`
echo $projeto
projeto="../$projeto"
echo rm $projeto
rm $projeto

echo projeto = \"$projeto\"
current="../BootLoader.gex"
echo current = \"$current\"

forma="VALIDOU"
while [ "$forma" == "VALIDOU" ]
do
	forma=`cat $current | tail -n 1 | sed 's_/__g' | sed 's_\.\._\.\./_' | sed 's/^add .*/VALIDOU/'`
	linha=`cat $current | tail -n 1`
	echo ultima linha de current = \"$linha\"
	echo forma = \"$forma\"
	if [ "$forma" == "VALIDOU" ]
	then
		echo "VAI TER OUTRA COMPILADA PERA AI"
		next=`cat $current | tail -n 1 | sed 's_/__g' | sed 's_\.\._\.\./_' | sed 's/^add //'`
		next="../$next"
		echo next = \"$next\"

		gex $current $current.temp
		cat $current.temp >> $projeto
		rm $current.temp
		current=$next

		echo
		echo projeto = \"$projeto\"
		echo current = \"$current\"
	else
		echo "ULTIMA COMPILADA"
		gex $current $current.temp
		cat $current.temp >> $projeto
		rm $current.temp

		echo
	fi
done
