#!/bin/zsh
# usage: ./sheet.sh name t1 t2 t3 t4   -> out/stills/sheet_name.png (2x2 grid, half-res)
name=$1; shift
times=${(j:,:)@}
node render.mjs --scale 1 --stills $times 2>&1 | grep -v "^still"
cd out/stills
inputs=(); for t in $@; do inputs+=(-i "t_$(printf '%.2f' $t).png"); done
n=$#
if [ $n -eq 4 ]; then layout="0_0|w0_0|0_h0|w0_h0"; else layout="0_0|w0_0|w0+w1_0|0_h0|w0_h0|w0+w1_h0"; fi
filt=""; for i in $(seq 0 $((n-1))); do filt="${filt}[$i]scale=960:-1[v$i];"; done
for i in $(seq 0 $((n-1))); do filt="${filt}[v$i]"; done
ffmpeg -v error -y $inputs -filter_complex "${filt}xstack=inputs=${n}:layout=${layout}" sheet_$name.png && echo "out/stills/sheet_$name.png"
