export GST_DEBUG="*:3"
export GST_DEBUG_FILE=/${PWD}/slave2_gst.log





gst-launch-1.0 -v udpsrc address=192.168.50.20 port=12346 ! application/x-rtp,media=audio,clock-rate=48000, channels=1,encoding-name=L16 ! rtpjitterbuffer mode=4 name=jitterBuffer ! rtpL16depay ! audioconvert  ! alsasink slave-method=3 drift-tolerance=100 discont-wait=5000 sync=true 


