#!/bin/bash
ignore_files=("." ".." ".git" "README.md" "initialized.sh")
dot_dir=$(cd `dirname $0` && pwd)
home_dir=`cd ~/ && pwd`
check=0
for file in ${dot_dir}/.* ${dot_dir}/*;

do

	base_name=`basename ${file}`
	for ignore_file in ${ignore_files[@]}
	do
		if [ $base_name = $ignore_file ]; then
			check=1
			break
		fi	
	done
	if [ $check != 1 ]; then
		ln -s $file $home_dir
	fi
	check=0
done
