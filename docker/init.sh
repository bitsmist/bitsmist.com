#!/bin/bash

pushd nginx/contents
ln -s ../../../public .
ln -s ../../../common .
popd

pushd phpfpm/contents
ln -s ../../../public .
ln -s ../../../common .
popd
