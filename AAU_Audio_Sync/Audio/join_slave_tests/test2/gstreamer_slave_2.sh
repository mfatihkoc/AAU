export GST_DEBUG="*:3"
export GST_DEBUG_FILE=/${PWD}/slave2_gst.log


gst-launch-1.0 -v udpsrc address=192.168.50.20 port=12346 ! application/x-rtp,media=audio,clock-rate=48000, channels=2,encoding-name=L16 ! rtpjitterbuffer mode=0 name=jitterBuffer ! rtpL16depay ! audioconvert ! alsasink slave-method=3 drift-tolerance=1 discont-wait=10 sync=true 



