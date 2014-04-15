#!/bin/bash
#Modify ====================
BaseName=
RND_SEED=
# ==========================

cd /afs/cern.ch/user/s/spak/Work/private/GG2VV/
. setenvSourceME4gg2VV.sh
cd -
#DirGg2VV="/afs/cern.ch/work/s/salee/private/HWWwidth/GG2VV/gg2VV-3.1.5/gg2VV"
DirGg2VV="/afs/cern.ch/work/s/spak/private/GG2VV/gg2VV-3.1.5/gg2VV"
#DATA_DIRECTORY="/afs/cern.ch/work/s/salee/private/HWWwidth/GG2VV/test/"$BaseName
DATA_DIRECTORY="/afs/cern.ch/work/s/spak/private/GG2VV/test/"$BaseName

PATH=$PATH:$DirGg2VV
COMMAND="gg2VV_"$BaseName
RND_TAIL=".rngseed"
GEN_FILE_TAIL="_unweightedEvents.dat"
RES_FILE_TAIL="_unweightedEvents.lhe"
rm -f $COMMAND$RND_SEED$RND_TAIL
touch $COMMAND$RND_SEED$RND_TAIL
echo $RND_SEED >> $COMMAND$RND_SEED$RND_TAIL
cd $DirGg2VV
cp $COMMAND $COMMAND$RND_SEED
cd -
$COMMAND$RND_SEED

if [[ ! -e $DATA_DIRECTORY ]]; then
  mkdir $DATA_DIRECTORY
fi


cp $COMMAND$RND_SEED$GEN_FILE_TAIL $DATA_DIRECTORY"/"$COMMAND$RND_SEED$RES_FILE_TAIL
