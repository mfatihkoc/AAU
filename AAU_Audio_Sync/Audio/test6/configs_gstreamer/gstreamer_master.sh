export GST_DEBUG="*:3"
export GST_DEBUG_FILE=/${PWD}/master_gst.log

"""
gst-launch-1.0 -v audiotestsrc  wave=ticks samplesperbuffer=1200  !  audioconvert ! audio/x-raw, rate=48000,format=S16LE, channels=1 ! audioconvert ! rtpL16pay mtu=2412 ! queue min-threshold-bytes=2412 ! multiudpsink clients=127.0.0.1:12345,192.168.50.20:12346 sync=true ts-offset=-10
"""



gst-launch-1.0 -v audiotestsrc  wave=ticks samplesperbuffer=1200  !  audioconvert ! audio/x-raw, rate=48000,format=S16LE, channels=1 ! audioconvert ! rtpL16pay mtu=2412 ! queue min-threshold-bytes=2412 ! multiudpsink clients=127.0.0.1:12345,192.168.50.20:12346 sync=true ts-offset=-10





