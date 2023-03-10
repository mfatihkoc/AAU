#!/bin/bash
source ../interface.cfg
ptp4l -i $INTERFACE -f config_files/ptp4l_slave.cfg
