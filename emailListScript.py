#Coworker asked me to create a rule for him in outlook to file all emails from a number of people. I used this script to reorganize it into a clean line that I can just input into outlook.
#The filepath is the original text file, the output is naturally the location and name of the other text document. 

import re

filePath=r"filePath of doc"
outPut=r"output file"

def emailList(input, out):
	with open(input, 'r') as f:
		l=re.split(' |\n', f.read())
		i=0

		with open(out, 'w') as o:		
			while (i<len(l)):
				if(l[i].find("@")!=-1):
					o.write(l[i]+";")
				i+=1

emailList(filePath, outPut)
