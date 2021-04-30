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

#UC3

IS_PART_TIME=1;
IS_FULL_TIME=2;

if [ $IS_PART_TIME -eq $randomCheck ]
then
   empHrs=4;
elif [ $IS_FULL_TIME -eq $randomCheck ]
then
   empHrs=8;
else
   empHrs=0;
   echo "no salary"
fi
salary=$(($empRatePerday*$empHrs))

echo "salary of employee depending upon part time or full time is " $salary

#UC4

empCheck=$((RANDOM%3))
case $empCheck in
     $IS_FULL_TIME)
            empHrs=8;;
     $IS_PART_TIME)
            empHrs=4;;
     *)
           empHrs=0;
esac

salary=$(($empHrs*$empRatePerday))
echo "salary with switch case " $salary
