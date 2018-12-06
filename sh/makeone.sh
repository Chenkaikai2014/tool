#!/bin/sh
g++ -std=c++11 $1 -g -o sonia
if [ $? -eq 0 ]; then
	./sonia
fi
