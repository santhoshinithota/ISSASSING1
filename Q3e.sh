grep -wo  '[[:alnum:]]\+' $file > santhu.txt
cat -n temp.txt | sort -k2 | uniq -cdf1 | sort -nk2  > santhu2.txt
while read line
do
echo "$(echo $line | awk '{print "Word: " $3 " - Count of repitition: " $1}')"
done < santhu.txt
rm santhu.txt
rm santhu2.txt