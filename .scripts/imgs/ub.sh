#!/bin/bash

source "`ueberzug library`"

# [ $z "$5" ] && echo "Usage: $0 <image path> <x> <y> <max x> <max y>" && exit

ImageLayer 0< <(
    ImageLayer::add [identifier]="example" [x]="$2" [y]="$3" [max_width]="$4" [max_height]="$5" [path]="$1"
    read
)
