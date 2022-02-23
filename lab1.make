lab1: ./data_lab1/data.csv
target: dependencies
	awk -f ./data_lab1/run.awk lab1
