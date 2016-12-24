#!/bin/bash
# if you need more help installing mongodb - https://docs.mongodb.com/manual/administration/install-community/
#
CURRENT=`pwd`
DOWNLOADSDIR="$CURRENT/downloads/mongodb-linux-x86_64-3.4.1.tgz"
EXPORTPATH="$CURRENT/database/mongodb/bin"

if [ ! -e index.js ]
then
	echo "Please run the mongodb-install.sh script from the main root directory"
	echo "i.e: bash scripts/mongodb-install.sh"
	echo "Or by npm run mongodb-install"
	exit -1
fi
mkdir -p ./downloads
mkdir -p ./database
mkdir -p ./database/mongodb
mkdir -p ./database/mongodb/db
cd ./downloads
curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.4.1.tgz
cd ../database
tar -zxvf "$DOWNLOADSDIR"
cp -R -n mongodb-linux-x86_64-3.4.1/ mongodb
rm -rf ./mongodb-linux-x86_64-3.4.1
export PATH="$EXPORTPATH":$PATH
