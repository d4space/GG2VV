#!/bin/tcsh -f
set givenFileNameBase	= SigHw25RoScMiCut_
set givenCommand	= SigHw25RoScMiCut
set newFileNameBase	= SigHw1RoScMiCut_
set newCommand		= SigHw1RoScMiCut
#set givenFileNameBase	= IntHw25RoScMiCut_
#set givenCommand	= IntHw25RoScMiCut
#set newFileNameBase	= IntHw1RoScMiCut_
#set newCommand		= IntHw1RoScMiCut
#set givenFileNameBase	= CotHw25RoScMiCut_
#set givenCommand	= ContHw25RoScMiCut
#set newFileNameBase	= CotHw1RoScMiCut_
#set newCommand		= CotHw1RoScMiCut

foreach idx (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16)
  set fileName = "$givenFileNameBase$idx.sh"
  set newfileName = "$newFileNameBase$idx.sh"
  echo $fileName
  echo $newfileName
  sed s/$givenCommand/$newCommand/ $fileName > $newfileName
end
exit 0
