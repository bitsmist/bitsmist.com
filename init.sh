#!/bin/bash

pushd public
ln -s ../common/css .
ln -s ../common/images .
ln -s ../common/js .
ln -s ../common/webfonts .
ln -s ../common/units .
popd

pushd public/data
ln -s ../../common/pages .
popd

pushd public/conf
ln -s ../../common/conf/* .
popd

pushd public/lib/tpl/readthedokus
ln -s ../../../../common/parts/* .
popd
