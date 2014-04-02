import os

idx=0
BaseName="IntHw25RoScMiCut"
print "BaseName is "+BaseName

myRange = range(21, 30) # used until last number -1
for idx in  myRange:
  if   BaseName=="SigHw25RoScMiCut":
    Seed = idx*10 + 1
  elif BaseName=="CotHw25RoScMiCut":
    Seed = idx*10 + 3
  elif BaseName=="IntHw25RoScMiCut":
    Seed = idx*10 + 2
  else:
    print "BaseName is not corret"
    exit(-1)

  
  OutFile = BaseName+"_"+str(idx)+".sh"
  if os.path.isfile(OutFile):
    print OutFile+" exist, removing...., and creating"
    os.remove(OutFile)
  with open("Template.sh", "r") as myfile:
    for line in myfile:
      with open(OutFile, "a") as outFile:
	if 'BaseName=' in line:
	  line = "BaseName="+"\""+BaseName+"\""+"\n"
	if 'RND_SEED=' in line:
	  line = "RND_SEED="+"\""+str(Seed)+"\""+"\n"
        outFile.write(line)


tmpVar = '''Finishing "mkScript.py"'''
print tmpVar
