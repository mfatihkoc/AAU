gst-launch-1.0 filesrc location=/home/ubuntu/Downloads/lifelike-126735.mp3 ! decodebin ! audioconvert ! udpsink host=127.0.0.1 port=12346



#This pipeline uses the "filesrc" element to read the audio file, "decodebin" to decode the file into raw audio data, "audioconvert" 
#to convert the audio to a format suitable for streaming, and "udpsink" to send the audio data over UDP to the specified host IP address and port.
