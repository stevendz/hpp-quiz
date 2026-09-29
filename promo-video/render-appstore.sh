#!/bin/zsh
# App Store preview render (portrait, spec-compliant):
#   ./render-appstore.sh iphone     -> out/hpp-appstore-iphone-886x1920.mp4
#   ./render-appstore.sh ipad       -> out/hpp-appstore-ipad-1200x1600.mp4
# H.264 High@4.0, 30 fps, ~11 Mbit/s (2-pass), AAC 256 kbit/s stereo 48 kHz, -14 LUFS.
set -e
cd "$(dirname "$0")"
DEV=${1:-iphone}
case $DEV in
  iphone) VW=443; VH=960; OW=886; OH=1920; SCALE=4 ;;
  ipad) VW=768; VH=1024; OW=1200; OH=1600; SCALE=3.125 ;;
  *) echo "unknown device $DEV"; exit 1 ;;
esac
JOBS=${JOBS:-5}
SUB=${SUB:-8}
FPS=30
DUR=$(python3 -c "import re,json;print(json.loads(re.search(r'=\s*(\{.*?\});',open('timeline-appstore.js').read(),re.S).group(1))['end'])")
FRAMES=$(python3 -c "print(round($DUR*$FPS))")
PER=$(( (FRAMES + JOBS - 1) / JOBS ))
SEG=out/seg-$DEV
rm -rf $SEG && mkdir -p $SEG
pids=()
for i in $(seq 0 $((JOBS - 1))); do
  f0=$((i * PER)); f1=$(((i + 1) * PER)); (( f1 > FRAMES )) && f1=$FRAMES
  t0=$(python3 -c "print($f0/$FPS)"); t1=$(python3 -c "print($f1/$FPS)")
  node render.mjs --page "appstore.html?device=$DEV" --vw $VW --vh $VH --ow $OW --oh $OH --scale $SCALE \
    --fps $FPS --sub $SUB --duration $DUR --from $t0 --to $t1 --crf 12 --out $SEG/seg_$i.mp4 > $SEG/log_$i.txt 2>&1 &
  pids+=($!)
done
for p in $pids; do wait $p; done
: > $SEG/list.txt
for i in $(seq 0 $((JOBS - 1))); do echo "file 'seg_$i.mp4'" >> $SEG/list.txt; done
ffmpeg -v error -y -f concat -safe 0 -i $SEG/list.txt -c copy $SEG/master.mp4

python3 audio.py --variant appstore
M=$(ffmpeg -hide_banner -nostats -i out/audio-appstore.wav -af loudnorm=I=-14:TP=-1.5:LRA=11:print_format=json -f null - 2>&1 | sed -n '/^{/,/^}/p')
get() { echo "$M" | python3 -c "import json,sys; print(json.load(sys.stdin)['$1'])"; }
LN="loudnorm=I=-14:TP=-1.5:LRA=11:measured_I=$(get input_i):measured_TP=$(get input_tp):measured_LRA=$(get input_lra):measured_thresh=$(get input_thresh):offset=$(get target_offset):linear=true"

OUTF=out/hpp-appstore-$DEV-${OW}x${OH}.mp4
V=(-c:v libx264 -preset slow -profile:v high -level:v 4.0 -pix_fmt yuv420p -r $FPS -b:v 11M -maxrate 12M -bufsize 24M)
ffmpeg -v error -y -i $SEG/master.mp4 $V -pass 1 -passlogfile $SEG/x264 -an -f null /dev/null
ffmpeg -v error -y -i $SEG/master.mp4 -i out/audio-appstore.wav -map 0:v -map 1:a $V -pass 2 -passlogfile $SEG/x264 \
  -color_primaries bt709 -color_trc bt709 -colorspace bt709 -color_range tv \
  -af "$LN" -c:a aac -b:a 256k -ar 48000 -ac 2 -movflags +faststart $OUTF
ls -lh $OUTF
