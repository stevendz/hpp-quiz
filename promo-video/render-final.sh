#!/bin/zsh
# Final render: parallel segments (motion blur + 2x supersampling), concat, soundtrack mux.
#   ./render-final.sh            JOBS=4 by default
set -e
cd "$(dirname "$0")"
JOBS=${JOBS:-4}
FPS=60
FRAMES=$((FPS * 15))
PER=$(( (FRAMES + JOBS - 1) / JOBS ))
rm -rf out/seg && mkdir -p out/seg
pids=()
for i in $(seq 0 $((JOBS - 1))); do
  f0=$((i * PER)); f1=$(((i + 1) * PER)); (( f1 > FRAMES )) && f1=$FRAMES
  t0=$(python3 -c "print($f0/$FPS)"); t1=$(python3 -c "print($f1/$FPS)")
  node render.mjs --from $t0 --to $t1 --out out/seg/hd_$i.mp4 --out4k out/seg/uhd_$i.mp4 > out/seg/log_$i.txt 2>&1 &
  pids+=($!)
done
for p in $pids; do wait $p; done
for kind in hd uhd; do
  : > out/seg/$kind.txt
  for i in $(seq 0 $((JOBS - 1))); do echo "file '$kind"_"$i.mp4'" >> out/seg/$kind.txt; done
  ffmpeg -v error -y -f concat -safe 0 -i out/seg/$kind.txt -c copy out/seg/$kind.mp4
done
python3 audio.py
# two-pass loudness normalisation to -14 LUFS / -1.5 dBTP
M=$(ffmpeg -hide_banner -nostats -i out/audio.wav -af loudnorm=I=-14:TP=-1.5:LRA=11:print_format=json -f null - 2>&1 | sed -n '/^{/,/^}/p')
get() { echo "$M" | python3 -c "import json,sys; print(json.load(sys.stdin)['$1'])"; }
LN="loudnorm=I=-14:TP=-1.5:LRA=11:measured_I=$(get input_i):measured_TP=$(get input_tp):measured_LRA=$(get input_lra):measured_thresh=$(get input_thresh):offset=$(get target_offset):linear=true"
ffmpeg -v error -y -i out/seg/hd.mp4 -i out/audio.wav -map 0:v -map 1:a -c:v copy -af "$LN" -ar 48000 -c:a aac -b:a 256k -movflags +faststart out/hpp-pruefungstrainer-promo-1080p.mp4
ffmpeg -v error -y -i out/seg/uhd.mp4 -i out/audio.wav -map 0:v -map 1:a -c:v copy -af "$LN" -ar 48000 -c:a aac -b:a 256k -movflags +faststart out/hpp-pruefungstrainer-promo-4k.mp4
ls -lh out/hpp-pruefungstrainer-promo-*.mp4
