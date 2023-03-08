#!/bin/bash
source ../interface.cfg
phc2sys -s $INTERFACE -c CLOCK_REALTIME -w -m -f config_files/phc2sys.cfg
