for((i=0;i<length;i++))
do
echo -n ${arr[i]} | tr a-z b-za | tr A-Z B-ZA
done
echo