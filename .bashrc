alias ctags="`brew --prefix`/bin/ctags"
alias vR="vim $HOME/.vimrc"
alias vBP="vim $HOME/.bash_profile"
alias vBR="vim $HOME/.bashrc"
alias phg="phpenv global"
alias phl="phpenv local"
alias phi="phpenv install"
alias phu="phpenv uninstall"

#ssh-keygen setting
eval `ssh-agent`

ssh_dir="`dirname ~/.ssh`/.ssh"
for file in ~/.ssh/*
do
	extension=`echo $file | sed 's/^.*\.\([^\.]*\)$/\1/'`
	#echo $extension
	if [ $file != "${ssh_dir}/config" -a $file != "${ssh_dir}/known_hosts" -a $extension != 'pub' ]; then
		ssh-add $file
	fi
done
