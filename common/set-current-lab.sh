#!/bin/bash

rm -f ~/links/current_lab
ln -s `pwd -P` ~/links/current_lab
echo Set current lab directory to: `pwd -P`
