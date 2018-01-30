#!/bin/bash

# if [ -z $1 ]
# then
# 	TRACKING_OPTION=full
# else
# 	TRACKING_OPTION=$1
# fi

TRACKING_OPTION="off"
OUT_FMT="csv"

echo "TRACKING OPTION: $TRACKING_OPTION"

./app_obi_data_pipe psye_calibA.yaml psye_calibB.yaml 1 2 ${TRACKING_OPTION} ${OUT_FMT}