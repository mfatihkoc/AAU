# AAU

# AAU_Audio_Sync

# Prerequisites
This repository assumes that you are using ubuntu 22


# Repository Structure
```bash
.
└── Reports
└──2PC_setu
└──7PC_sych_outcome
└── BO
└──multiplePC / 6PC
└── ptp_outputs


  
```

## Reports

```
Here you can find project reports
1.) Synchronizing Time with Linux PTP.docx
2.) Synchronizing Time with Linux PTP.docx
3.) Tests implementing synchronization on GStreamer
4.) Sychronization of audio over LAN network
5.) final report for ptp synchronization



```

## Details folder
```

contains the images shows that when both NIC card connected during sych which means that when we connected
ptp supported NIC for sych and also Desktop own NIC card connected to the AAU network,
ptp library version images and asus ip network images.

also contains txt_files that are represent of the phc and ptp4l clock images in order to plot the time forfrequency and samples


```
## 2PC_setup
```

here is the test for 2pc setup for xxx.xxx.xx.20,21 IPs addresses
```
## 7PC_sych_outcome
```
here are the images of 7 client connected  to 1 master pc sychronization output example
```
## BO 
```
contains the setup with BO code for audio streaming part with 2 clients, and recorded 1 sample
```
## multiplePC / 6PC
```
Using gstreamer pipelines the ptp sych and audio streaming with cable connection records are illustrated here.
the 6th PC also connected to the aau network.
```
## ptp_outputs
```
here there are 2 test for plot of phc outcomes to see phc clock synchronization on each 2 and 8 clients respectively.

