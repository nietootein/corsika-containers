#!/bin/bash

#Installation path
target_path='/home/'

my_asset=`ls *tar.gz`
my_path=`basename $my_asset .tar.gz`
my_path=$target_path/$my_path
mkdir -p $my_path
tar zxvf $my_asset -C $my_path
rm $my_asset

if [[ $my_asset == *"simtel"* ]]; then
    #corsika-simtelarray build_all options
    options='prod4 qgs2'
    ln -s $my_path $target_path/corsika_simtelarray
    cd $my_path
    echo ./build_all $options > build_all.out
    ./build_all $options &>> build_all.out
else
    ln -s $my_path $target_path/corsika
    cd $my_path
    tar zxvf ./bernlohr/bernlohr*tar.gz -C ./bernlohr
    echo ./bernlohr/corsika_build_script > corsika_build_script.out
    ./bernlohr/corsika_build_script &>> corsika_build_script.out
fi
