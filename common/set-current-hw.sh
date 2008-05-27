#!/bin/bash

rm -f ~/links/current_hw
ln -s `pwd -P` ~/links/current_hw
echo Set current hw to: `pwd -P`
