export GST_DEBUG="*:3"
export GST_DEBUG_FILE=/${PWD}/slave2_gst.log



gst-launch-1.0 -v udpsrc address=192.168.50.20 port=12346 ! application/x-rtp,media=audio,clock-rate=48000, channels=2,encoding-name=L16 ! rtpjitterbuffer mode=1 name=jitterBuffer ! rtpL16depay ! audioconvert ! alsasink slave-method=1 drift-tolerance=10000 discont-wait=1000 sync=true 




#Launch Gstreamer with verbose output
#gst-launch-1.0 -v 

#Reads udp packets on network
#udpsrc port=12345

#??
#application/x-rtp,media=audio,clock-rate=48000, channels=1,encoding-name=L16

#??
#rtpjitterbuffer mode=4  name=jitterBuffer

#??
#rtpL16depay

#Tells gstreamer to start audio conversion
#audioconvert

#??
#alsasink  sync=true
