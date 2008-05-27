#!/bin/bash

rm -f ~/links/current
ln -s `pwd -P` ~/links/current
echo Set current to: `pwd -P`
