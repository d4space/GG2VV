#!/bin/bash
#Modify ====================
BaseName="CotHw1RoScMiCut"
RND_SEED="53"
# ==========================

DirGg2VV="/afs/cern.ch/work/s/salee/private/HWWwidth/GG2VV/gg2VV-3.1.5/gg2VV"
PATH=$PATH:$DirGg2VV
COMMAND="gg2VV_"$BaseName
RND_TAIL=".rngseed"
GEN_FILE_TAIL="_unweightedEvents.dat"
RES_FILE_TAIL="_unweightedEvents.lhe"
DATA_DIRECTORY="/afs/cern.ch/work/s/salee/private/HWWwidth/GG2VV/test/"$BaseName
rm -f $COMMAND$RND_SEED$RND_TAIL
touch $COMMAND$RND_SEED$RND_TAIL
echo $RND_SEED >> $COMMAND$RND_SEED$RND_TAIL
cd $DirGg2VV
cp $COMMAND $COMMAND$RND_SEED
cd -
$COMMAND$RND_SEED

mkdir $DATA_DIRECTORY
cp $COMMAND$RND_SEED$GEN_FILE_TAIL $DATA_DIRECTORY"/"$COMMAND$RND_SEED$RES_FILE_TAIL
