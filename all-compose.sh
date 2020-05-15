#!/bin/bash

for i in *; do
	if [ -e "$i/docker-compose.yml" ]; then
		echo "process subdir "$i
		cd $i
		docker-compose "$@"
		cd ..
	fi
done
	
