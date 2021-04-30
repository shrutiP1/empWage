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

#UC5

totalSalary=0;
numWorkDays=20;
for (( day=1; day<=$numWorkDays; day++))
do
    empCheck=$((RANDOM%3))
    case $empCheck in
      $IS_FULL_TIME)
                   empHrs=8;;
      $IS_PART_TIME)
                   empHrs=4;;
      *)
                   empHrs=0;;
     esac
salary=$(($empHrs*$empRatePerday))
totalSalary=$(($salary*$numWorkDays))

done
echo "total wages of 20 working days" $totalSalary

#UC6

MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH &&
          $totalWorkingDays -lt $numWorkDays ]]
do
     ((totalWorkingDays++))
      empCheck=$((RANDOM%3));
      case $empCheck in
          $IS_FULL_TIME)
                  empHrs=8;;
          $IS_PART_TIME)
                    empHrs=4;;
              *)
                empHrs=0;;
      esac
     totalEmpHr=$(( $empHrs + $totalEmpHr))
done
totalSalary=$(( $totalEmpHr * $EMP_RATE_PER_HR  ))
echo "total salary dpending on condition of hrs and working days is " $totalSalary

#UC7

totalEmpHr=0;
totalWorkingDays=0;
totalWorkHours=0;
function getWorkingHours(){
    case $1 in
       $IS_PART_TOME)
                workingHrs=4;;
       $IS_FULL_TIME)
                workingHrs=8;;
       *)
                 workingHrs=0;;
     esac
   echo $workingHrs;
}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH &&
          $totalWorkingDays -lt $numWorkDays ]]
do
    ((totalWorkingDays++))
    workHours="$( getWorkingHours $((RANDOM%3)))"
   totalWorkHours=$(( $totalWorkHours + $workHours ))
done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));
echo "total salary using function is "$totalSalary 
