#!/bin/sh
#bsub -q 8nh -J job1SigGenCut <job1Sig_GenCut.sh
bsub -q 2nd -J SigGeCut1 <SigHw25RoScGeCut_1.sh
bsub -q 2nd -J SigMiCut1 <SigHw25RoScMiCut_1.sh
bsub -q 2nd -J ConGeCut1 <ContHw25RoScGeCut_1.sh
bsub -q 2nd -J ConMiCut1 <ContHw25RoScMiCut_1.sh
bsub -q 2nd -J IntGeCut1 <IntHw25RoScGeCut_1.sh
bsub -q 2nd -J IntMiCut1 <IntHw25RoScMiCut_1.sh
