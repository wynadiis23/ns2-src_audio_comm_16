import numpy as np
import sys
import csv

nnode=sys.argv[1]
codec=sys.argv[2]

#path
path_packetloss='/home/adisaputra/NS/voip/Project-Jitter-Buffer-master/awk/'+str(codec)+'_pktloss_'+str(nnode)+'.txt'
path_delay='/home/adisaputra/NS/voip/Project-Jitter-Buffer-master/awk/'+str(codec)+'_delay_'+str(nnode)+'.txt'

#variabel
ndelay=[]
npktloss=[]
tampung_ie=[]
tampung_id=[]

#R0
R0=94.2
heav=0
#cf=0
#id=0
R=[]
def main():
	
	
	#print (nnode)
	
	read_packetloss(path_packetloss)
	read_delay(path_delay)
	#print(npktloss)		
	#print(ndelay)
	cf=ie_factor(codec)
	hitung_id()
	hitung_ie()
	
	
	print(cf)
	print("ie: ",tampung_ie)
	print("id: ",tampung_id)
	count1=0
	count2=0
	#count line in file
	with open(path_delay, 'r') as fcount1:
		for line in fcount1:
			count1+=1
	with open(path_packetloss, 'r') as fcount2:
		for line in fcount2:
			count2+=1
	
	if count1 == count2:
		a=0
		for x in range(count1):
			R.append(R0-tampung_id[x]-tampung_ie[x]) #tidak pakai cf
			a+=1
	with open('Rfactor_'+str(codec)+'_'+str(nnode)+'.csv', 'w', newline='') as myfile:
		wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
		for word in R:
			wr.writerow([word])
		
     
	fcount1.close
	fcount2.close
	myfile.close
	#print(R)
	
########################
def read_packetloss(pkt):
	with open(pkt, 'r') as f:
		for line in f:
			if line: #avoid blank lines
				npktloss.append(float(line.strip()))
	return npktloss
#######################
def read_delay(dly):
	with open(dly, 'r') as f:
		for line in f:
			if line: #avoid blank lines
				ndelay.append(float(line.strip()))
	return ndelay
######################
def ie_factor(codec):
	if codec == "g711":
		#print("sama")
		#mamang="mamang"
		cf = 19
		return cf
		
	elif codec == "g723_1":
		cf=19
		print("beda")
		#return cf
	else:
		print("codec tidak ditemukan")
		sys.exit()
		
	return cf
####################
def hitung_ie():
	#hitung paketloss
	a=0
	ie_temp = 0
	np_temp = 0
	for i in npktloss:
		#print(npktloss[a])
		np_temp = np.log(1+(15*npktloss[a]))
		ie_temp=(30*np_temp)
		tampung_ie.append(ie_temp)
		#print(np_temp)
		#print(ie_temp)
		ie_temp=0
		a+=1
	return tampung_ie
####################
def hitung_id():
	#hitung_ie()
	
	a=0
	id_temp = 0
	
	for i in ndelay:
		#print(ndelay[a])
		heav=heavyside(ndelay[a])
		#print(heav)
		id_temp=(0.024*ndelay[a])+(0.11*(ndelay[a]-177.3)*heav)
		#print(id_temp)
		
		tampung_id.append(id_temp)
		id_temp=0
		a+=1
	return tampung_id
###################
def heavyside(x):
	y = x - 177.3
	if y < 0:
		heav=0
		return heav
	elif y >= 0:
		heav=1
		return heav
####################

if __name__=="__main__":
	main()
	