import re
simpan=[]
setdest=[]

with open('mobility_25.tcl', 'r') as file:
	for line in file:
		if "node_(24) setdest" in line:
			simpan.append(line)
			
#print(simpan)
saved =  open('saved.tcl', 'w')

for node in simpan:
	saved.write(node)
	#saved.write('\n')

for item in simpan:
	if "setdest" in item:
		#item.strip()
		
		setdest.append(item.strip("$ns_ at"))
		
fsetdest = open('setdest', 'w')  

txt = "The rain in Spain"
x = re.findall("^rain.*", txt) 

print(x)

for setd in setdest:
	fsetdest.write(setd)

fsetdest.close()
saved.close()
