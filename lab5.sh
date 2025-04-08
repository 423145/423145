# 1. Extract ERROR messages with timestamps from a log file:
awk '$2 == "[ERROR]" {print $1, $2, $3, $4}' log.txt

# 2. Compute the average of each subject from a tab-separated CSV file:
awk 'BEGIN {FS="\t"; OFS="\t"} NR > 1 {math += $2; science += $3; english += $4; count++} END {print "Average", math/count, science/count, english/count}' file.tsv

# 3. Count occurrences of each IP address in a server log:
awk '{count[$1]++} END {for (ip in count) print ip, count[ip]}' server.log

# 4. Swap the first and last words in lines of text using sed:
sed -E 's/^([^ ]+) (.*) ([^ ]+)$/\3 \2 \1/' file.txt

# 5. Remove consecutive duplicate words using sed:
sed 's/\b\(\w\+\)\s\+\1\b/\1/g' file.txt
