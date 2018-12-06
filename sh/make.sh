#!/bin/sh
g++ -std=c++11 *.cpp -g -o sonia
if [ $? -eq 0 ]; then
	./sonia
fi
