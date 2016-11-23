if [ $# -eq 2 ]
then 
a=$1
else
 a=$(pwd)
fi
ls -SlR $a > /home/aneesh/sortingqn6/sort1.txt
awk '{print $5,$9}' ./sort1.txt > f1
awk '$1==0' f1 > f2
awk '{print $2}' f2 > f3
#removing sizeless files
find $a -type f -size 0 -exec rm -i {} \;
cd $a
#renaming
for file in "$2"
do
mv ${file} ${file%."$2"}.razorthink$(echo "$(pwd)"| sed -r 's/[/]+/-/g')
done
for file in *."$2"
do
mv ${file} ${file%."$2"}.
done
