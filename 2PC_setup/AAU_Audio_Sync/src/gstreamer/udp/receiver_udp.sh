gst-launch-1.0 udpsrc port=12346 ! decodebin ! audioconvert ! autoaudiosink


#This pipeline uses the "udpsrc" element to receive the audio data over UDP, "decodebin" to decode the data into raw audio, "audioconvert" 
#to convert the audio to a format suitable for playback, and "autoaudiosink" to automatically select an appropriate audio output device.
