#!/usr/bin/env bash
projects=(Chart Closure Lang Math Mockito Time)
projects_=(chart closure lang math mockito time)
num=(26 133 65 106 38 27)
#ist-generation-scripts
cd projects
#ist-generation-scripts/projects
for((i=0;i<${#projects[@]};i++))
do
	#ist-generation-scripts/Lang
	#cd ${projects[$i]}
	
	pids=() 
	for((j=1;j<=${num[$i]};j++))
	do
		#ist-generation-scripts/Lang/lang-1
		cd ${projects_[$i]}'-'$j 
		pushd . > /dev/null 2>&1 
		eval 'cp -R /home/ubuntu/Scrivania/lib/. lib/' 
		popd > /dev/null 2>&1
		wait "${pids[@]}" 
		#ist-generation-scripts/Lang
		cd ..
	done
	#ist-generation-scripts/
	#cd .. 
done

