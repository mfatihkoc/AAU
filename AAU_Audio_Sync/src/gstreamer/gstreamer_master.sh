gst-launch-1.0 -v audiotestsrc  wave=ticks samplesperbuffer=1200  !  audioconvert ! audio/x-raw, rate=48000,format=S16LE, channels=1 ! audioconvert ! rtpL16pay mtu=2412 ! queue min-threshold-bytes=2412 ! multiudpsink clients=127.0.0.1:12345,192.168.50.188:12346 sync=true ts-offset=-100

#Launch Gstreamer with verbose output
#gst-launch-1.0 -v

#Produces audio with "tick" output
#audiotestsrc  wave=ticks samplesperbuffer=1200

#Tells gstreamer to start audio conversion
#audioconvert

#Converts the audio to 16 bit mono audio at 48 Khz
#audio/x-raw, rate=48000,format=S16LE, channels=1 

#Tells gstreamer to start another audio conversion
#audioconvert 

#Puts audio in an RTP packet
#rtpL16pay mtu=2412

#Don't really know what this does...
#queue min-threshold-bytes=2412 

#Streams RTP payload to clients. Enables synchronization and sets a time offset to make sure all clients can catch up
#multiudpsink clients=127.0.0.1:12345,127.0.0.1:12346 sync=true ts-offset=-100
