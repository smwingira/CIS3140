# Export the lab1.csv output into the output for grouped cars by Make and top 3 of totals
output: data.o lab1.o
	awk -f ./sort.awk ./lab1.csv > ./sorted.csv

#Executing the run.awk file to compile parse and compile data.csv to lab1.csv output format
data.o: ./data.csv
	awk -f ./run.awk ./data.csv > ./lab1.csv

# Directory for the lab1.csv file
lab1.o: ./lab1.csv

cleanup:
	rm *.o output
