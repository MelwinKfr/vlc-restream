#!/bin/bash

width=''
if [[ $VIDEO_WIDTH != '' ]]; then
    width=",width=$VIDEO_WIDTH"
fi

port=''
if [[ $HTTP_PORT != '' ]]; then
    port=":$HTTP_PORT"
fi

if [[ $FORMAT == 'ogg' || $FORMAT == '' ]]; then
    vcodec='theo'
    ext='.ogg'
elif [[ $FORMAT == 'webm' ]]; then
    vcodec='VP80'
    ext='.webm'
fi

cvlc $FLUX_URL :sout="#transcode{vcodec=$vcodec,vb=800$width}:http{dst=$port/stream$ext}"
