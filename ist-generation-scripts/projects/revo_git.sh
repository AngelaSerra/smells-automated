#!/usr/bin/env bash
projects=(Chart Closure Lang Math Mockito Time)
projects_=(chart closure lang math mockito time)
num=(26 133 65 106 38 27)
for((i=0;i<${#projects[@]};i++))
do
	
	
	pids=() 
	for((j=1;j<=${num[$i]};j++))
	do
		pwd
		cd ${projects_[$i]}'-'$j
		pwd 
		eval 'rm -rf .git'
		wait "${pids[@]}" 
		cd .. 
	done
	
	
done

