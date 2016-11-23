ans=$(date "+%Y%m%d%H%M%S")
echo "$ans"
mkdir ./$ans
while read -r line
do
name="$line"
sudo tar -zpcvf firstcopy.tar.  $name
sudo tar -xpvzf firstcopy.tar. -C /home/aneesh/qn5shell/$ans 
done < "$1"

arr=()
for i in `ls`
do

   arr+=($i)

done

for i in ${arr[@]}

do

    if [ ! -e $i.tar.gz ]
    then
       if [[ $ans -gt $i ]]
         then
               sudo tar -cvpzf $i.tar.gz .
        else
             echo "not"
        fi
   fi

done
