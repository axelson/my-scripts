#!/bin/bash
mkdir resized
find -maxdepth 1 -name "*.jpg" -exec convert {} -sample 640x640 -verbose resized/{} \;
