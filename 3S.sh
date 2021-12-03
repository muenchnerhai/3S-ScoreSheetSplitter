#!/bin/bash
for file in /input/*
do
	if [ "${file}" == "*.pdf" ]
	then
		#TODO: read the f*cking documentation to get sh*t done: https://imagemagick.org/script/convert.php
		echo ${file}
	fi
done
