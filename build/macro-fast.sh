fase1=7
fase2=7
if [ $# -ne 2 ]
then
	echo -e "usage: macro [ida] [volta]\nonde ida/volta é o numero do tmux pane\nprecione 'ctrl-a q' para saber os numeros dos panes\n"
else
	source /home/gabriel/.bashrc
	echo -e "\033[1;31mgo to $1\033[0m" &
	tmux select-pane -t $1
	echo -e "\033[1;31mstart xmacro-fast\033[0m" &
	cat xmacro-fast.macro | xmacroplay :0 &
	echo -e "\033[1;31msleep $fase1\033[0m" &
	sleep $fase1
	echo -e "\033[1;31mgo to $2\033[0m" &
	tmux select-pane -t $2
	echo -e "\033[1;31msleep $fase2\033[0m" &
	sleep $fase2
	echo -e "\033[1;31mgo to $1\033[0m" &
	tmux select-pane -t $1
	echo -e "\033[1;31mfim\033[0m" &
fi

