echo "Starting processing..."
for i in *.pub; do
	echo -n "$i |" >> pub_bit_all.txt
	ssh-keygen -l -f "$i" >> pub_bit_all.txt
	done
	grep '2048' pub_bit_all.txt >> pub_bit_2048.txt 
	echo "cleaning up..."
	rm pub_bit_all.txt
	echo "### LIST OF 2048 bit keys ###"
	cat pub_bit_2048.txt
