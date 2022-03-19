NR == 1 {
	# Print headers
        print "Ranking" "\t" "Car_ID" "\t" "Year" "\t" "Make" "\t" "Model" "\t" "Total"
}
{
        rows[$4][$6][$0]
}
END {
        PROCINFO["sorted_in"] = "@ind_str_asc"
        for(m in rows) {
                n = asorti(rows[m], t, "@ind_num_desc");
                n = (n>3) ? 3 : n
                for(i=1; i<=n; i++) for(s in rows[m][t[i]]) {
                        $0 = s;
                        $1 = ++r;
                        print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" $6
                }
        }
}

