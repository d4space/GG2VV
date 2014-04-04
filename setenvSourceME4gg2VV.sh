#!/bin/sh -f
#setenv gg2VV_PATH /afs/cern.ch/work/s/salee/private/HWWwidth/GG2VV
export gg2VV_PATH=/afs/cern.ch/work/s/spak/private/GG2VV
#setenv gg2VV_PATH /afs/cern.ch/work/a/asakharo/gg2VV
export TOPDIR=$gg2VV_PATH/gg2VV-3.1.5
export LOOPTOOLS_TOPDIR=$gg2VV_PATH/LoopTools-2.8
#setenv LHAPATH /afs/cern.ch/work/s/salee/private/HWWwidth/CMSSW_5_3_7/src/HWW/ggVV/Generation/lhapdf-5.9.1/lhapdf-5.9.1-out/share/lhapdf
. /afs/cern.ch/sw/IntelSoftware/linux/all-setup.sh
export PATH=${PATH}:${gg2VV_PATH}/omniORB-4.1.6/bin
