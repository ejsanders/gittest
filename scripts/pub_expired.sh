echo "Starting processing..."
for i in *.pub; do
	echo -n "$i |" >> pub_bit_all.txt
	ssh-keygen -l -f "$i" >> pub_bit_all.txt
	done
	grep -oP '(?<=(_)).*(?=_)' pub_bit_all.txt > pub_expired.txt
	echo "### DATES ###"
	cat pub_expired.txt
