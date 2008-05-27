#!/bin/bash
CMD="tar czvf $1.tar.gz $1"
echo $CMD
$CMD
