#!/bin/sh
if [ -z "$1" ]; then
	echo "Usage: $0 <USER NAME>"
	exit 1
fi
echo "Initializing..."
echo "USER NAME : $1"

DIR_PATH=`dirname $0`
cd $DIR_PATH

cp ./commit-msg ../.git/hooks/
cp ./.gitignore ../
echo "$1" > ../.username
echo "Complete."
