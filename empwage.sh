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
#UC2

empRatePerday=20;
empHrs=8;

if [ $isPresent -eq $randomCheck ]
then
    
     salary=$(($empRatePerday*$empHrs))
     echo $salary
else
     echo "employee is abscent "
fi

