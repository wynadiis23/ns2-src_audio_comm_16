import re
simpan=[]

with open('mobility_25.tcl', 'r') as file:
	for line in file:
		if "node_(24) setdest" in line:
			simpan.append(line)
			
#print(simpan)
saved =  open('saved.tcl', 'w')

for node in simpan:
	saved.write(node)
	#saved.write('\n')
	
saved.close()
