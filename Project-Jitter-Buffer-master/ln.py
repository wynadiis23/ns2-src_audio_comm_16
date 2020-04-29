import numpy as np
import sys
import csv

nnode=sys.argv[1]
codec=sys.argv[2]

#routing protokol
routings=["AOMDV", "PA_AOMDV"]

#variabel
ndelay=[]
npktloss=[]
tampung_ie=[]
tampung_id=[]

R=[]
MOS=[]
def main():
	
	for routing in routings:
		#path
		path_packetloss='/home/adisaputra/NS/voip/Project-Jitter-Buffer-master/awk/packetloss/'+str(routing)+'_'+str(codec)+'_pktloss_'+str(nnode)+'.txt'
		path_delay='/home/adisaputra/NS/voip/Project-Jitter-Buffer-master/awk/delay/'+str(routing)+'_'+str(codec)+'_delay_'+str(nnode)+'.txt'

		print(str(routing)+" "+str(codec)+" "+str(nnode))
		#print(path_delay)

		#R0
		R0=94.2
		heav=0
		#cf=0
		#id=0
		tampung_r=0
		
		tampung_mos=0
		

		rata_R=0
		rata_MOS=0
		#print (nnode)
		
		read_packetloss(path_packetloss)
		read_delay(path_delay)
		#print(npktloss)		
		#print(ndelay)
		cf=ie_factor(codec)
		hitung_id()
		hitung_ie()
		
		
		#print(cf)
		#print("ie: ",tampung_ie)
		#print("id: ",tampung_id)
		count1=0
		count2=0
		#count line in file
		with open(path_delay, 'r') as fcount1:
			for line in fcount1:
				count1+=1
		with open(path_packetloss, 'r') as fcount2:
			for line in fcount2:
				count2+=1
		print(tampung_id)
		#print(count2)
		if count1 == count2:
			a=0
			for x in range(count1):
				tampung_r=R0-tampung_id[x]-tampung_ie[x]
				
				if tampung_r < 0:
					tampung_r = 0
				elif tampung_r > 100:
					tampung_r = 100
				
				tampung_mos=(1+(0.035*tampung_r)+tampung_r*(tampung_r-60)*(100-tampung_r)*0.000007)	
				R.append(tampung_r) #tidak pakai cf
				MOS.append(tampung_mos)
				a+=1
		
		#print(R)
		#mencari rata2 dari mos dan r
		rata_R = sum(R) / len(R)
		rata_MOS = sum(MOS) / len(MOS)
		
		R.append(rata_R)
		MOS.append(rata_MOS)
		with open('R/'+str(routing)+'_'+'Rfactor_'+str(codec)+'_'+str(nnode)+'.csv', 'w', newline='') as myfile:
			#wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
			#for word in R:
			#	wr.writerow([word])
			writer = csv.writer(myfile, delimiter='\t')
			writer.writerows(zip(R,MOS))
			
		#print(R)
		#print(MOS)
		ndelay.clear()
		npktloss.clear()
		tampung_id.clear()
		tampung_ie.clear()
		R.clear()
		MOS.clear()
		fcount1.close
		fcount2.close
		myfile.close
			
	
	
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
		#print("beda")
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
	
