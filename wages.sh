#Names: Alicia Wei & Patrick O'Neil
#Usage: Run bash wages.sh
#Problem 1
cat wages.csv | tail -n +2 | cut -d , -f 1,2 | sort -t "," -k1,1 -k2,2n | uniq > wages_p1.csv

#Problem2
echo "Highest wage"
sort wages.csv -t "," -n -k1,1 | tail -n 1

echo "Lowest wage"
sort wages.csv -t "," -n -k1,1 | head -n 2 | tail -n 1

echo "Top 10 Earner: Female"
sort wages.csv -t "," -n -k1,1 | tail -n 10 | grep female | wc -l

#Problem 3.
val1=$(sort wages.csv -t "," -n -k3,3n | cut -d , -f 3,4 | grep 16, | sort -t "," -k2,2n | head -n 1 | cut -d , -f 2)
val2=$(sort wages.csv -t "," -n -k3,3n | cut -d , -f 3,4 | grep 12, | sort -t "," -k2,2n | head -n 1 | cut -d , -f 2)

echo "$val1 - $val2" | bc
