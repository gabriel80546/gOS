tmux has-session -t os
if [ $? != 0 ]
then
	export MY_VAR="$PATH:~/lks/osDev/"
	tmux new-session -s os -n editor -d -x "170" -y "46"
	tmux send-keys -t os 'osdev' C-m
	tmux send-keys -t os 'osdev' C-m
	tmux send-keys -t os 'clear' C-m
	tmux split-window -v -t os

	tmux send-keys -t os 'osdev' C-m
	tmux send-keys -t os 'clear' C-m
	tmux send-keys -t os 'vim kernel.gex' C-m
	tmux split-window -v  -t os
	tmux send-keys -t os 'osdev' C-m
	tmux send-keys -t os 'clear' C-m
	tmux send-keys -t os 'hexedit kernel.bin'
	echo $MY_VAR
	tmux switch-client -t os
else
	echo 'Sessao ja existe'
fi
