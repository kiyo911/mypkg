#!/bin/bash

dir=~
[ "$1" != "" ] && dir="$1"

cd $dir/ros2_ws
colcon build
source $dir/.bashrc
timeout 20 ros2 launch mypkg fibonacci_listen.launch.py > /tmp/mypkg.log

cat /tmp/mypkg.log |
grep 'Listen: 1'
cat /tmp/mypkg.log |
grep 'Listen: 13'
cat /tmp/mypkg.log |
grep 'Listen: 1597'
