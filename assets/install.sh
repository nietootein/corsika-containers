#!/bin/bash

my_asset=`ls *tar.gz`
my_path=`basename $my_asset .tar.gz`
mkdir -p $my_path
tar zxvf $my_asset -C $my_path
rm $my_asset
cd $my_path
options='prod4 qgs2'
echo ./build_all $options > build_all.out
./build_all $options &>> build_all.out
