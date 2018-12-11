#!/bin/sh
name="/.gitkeep"

for patch in $( find -type d -empty)
do
	a=$patch$name
	touch $a
done
