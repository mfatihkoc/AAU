export GST_DEBUG="*:3"
export GST_DEBUG_FILE=/${PWD}/slave1_gst.log


gst-launch-1.0 -v udpsrc port=12345 ! application/x-rtp,media=audio,clock-rate=48000, channels=2,encoding-name=L16 ! rtpjitterbuffer mode=0 name=jitterBuffer ! rtpL16depay ! audioconvert ! alsasink slave-method=3 drift-tolerance=10 discont-wait=1000 sync=true




