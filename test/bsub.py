import os

myRange = range(211, 222) # this will run util lastNumber -1
for idx in myRange:
  Sigcmd = "bsub -q 2nd -J SigH25Mi"+str(idx)+" <SigHw25RoScMiCut_"+str(idx)+".sh"
  Cotcmd = "bsub -q 2nd -J CotH25Mi"+str(idx)+" <CotHw25RoScMiCut_"+str(idx)+".sh"
  Intcmd = "bsub -q 2nd -J IntH25Mi"+str(idx)+" <IntHw25RoScMiCut_"+str(idx)+".sh"

  #os.system(Sigcmd)
  os.system(Cotcmd)
  #os.system(Intcmd)

