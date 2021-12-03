#!/bin/bash
for file in /input/*
do
	if [ "${file}" == "*.pdf" ]
	then
		echo ${file}
	fi
done
