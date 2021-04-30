echo "welcome"
#UC1
isPresent=1;
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ];
then
     echo "employee is present";
else
     echo "employeee is absent";
fi
