BEGIN {
	# Setting field separator to comma
	FS = ",";
	# Setting output field separator to tab-space
	OFS = "\t\t";
}
FNR==1 {
	# Printing the headers
	print "Ranking", $7, $4, $5, $6, "Total";
	# Stop current block and go to next
	next
}
# Calculating and creating totals array for the totals column
{
	totals[FNR] = 0;
	for(i = 10; i <= 34; i++) {
		totals[FNR] += $i
	}
	lines[FNR] = $7 OFS $4 OFS $5 OFS $6;
}
# Handling the ranking column
END {
	PROCINFO["sorted_in"] = "@val_num_desc"
	ranking = 0;
	for(i in totals) {
		print ++ranking,lines[i],totals[i];
	}
}	
