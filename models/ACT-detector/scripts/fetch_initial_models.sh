#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
echo $DIR

FILE=act-detector-initial-caffemodels.tgz

echo "Downloading VGG16 caffemodels used as initialization for the RGB and the FLOW5 streams ..."

wget http://pascal.inrialpes.fr/data2/act-detector/downloads/initial_models/act-detector-initial-caffemodels.tgz

echo "Unzipping..."

tar zxvf $FILE -C models/ACT-detector/ && rm -f $FILE

echo "Done."
