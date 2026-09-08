#!/bin/sh

if [ $# -ne 2 ]
then
	echo "Error: Two arguments required"
	exit 1
fi

writefile=$1
writestr=$2

writedir=$(dirname "$writefile")

mkdir -p "$writedir"

if ! echo "$writestr" > "$writefile"
then
	echo "Error: could not create file"
	exit 1
fi

