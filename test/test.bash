#!/bin/bash
# SPDX-FileCopyrighrText: 2025 Hiromu Kiyokawa
# SPDX-License-Identifier: BSD-3-Clause

dir=~
[ "$1" != "" ] && dir="$1"

cd $dir/ros2_ws
colcon build
source $dir/.bashrc
timeout 3 ros2 launch mypkg fibonacci_listen.launch.py > /tmp/mypkg.log

res=0

ng () {
        echo ${1}行目が違うよ
        res=1
}

cat /tmp/mypkg.log |
grep ' 1'

[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

cat /tmp/mypkg.log |
grep ' 3'

[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


if [ "$res" -eq 0 ]; then
  echo "OK"
fi

exit $res
