#!/bin/bash

for subrun in "1240" "1242" "1243" "1245" "1247" "1248" "1249" "1253";do
	set -- $subrun
	sub=$1
  	script=code/fmriprep.sh
  	NCORES=8
  	while [ $(ps -ef | grep -v grep | grep $script | wc -l) -ge $NCORES ]; do
 		sleep 1s
    done
  	bash $script $sub &
  	sleep 5s
done


