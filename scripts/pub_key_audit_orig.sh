echo "Starting processing..."
for i in *.pub; do
	 echo "$i" >> pub_audit.txt
	 cat $i | tail -c 75 | grep -oP '(?<= ).*' >> pub_audit.txt
	 echo "" >> pub_audit.txt
	 done
	 echo "Done!"
