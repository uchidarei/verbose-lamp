#!/bin/bash
# 配列

colors=(red blue pink)
# echo ${colors[0]} # red
# echo ${colors[1]} # blue
# echo ${colors[2]} # pink
# echo ${colors[@]} # red blue pink
# echo ${#colors[@]} # 3

colors[1]=silver
colors+=(green orange)
echo ${colors[@]}
