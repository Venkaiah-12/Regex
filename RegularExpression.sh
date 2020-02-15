#!/bin/bash
echo "Welcome to RegularExpression problem"
firstName(){
Firstname=$1
fname=$(echo "$Firstname"|awk '/^[A-Z]{1}[a-z]*$/{print $0}') 
if [[ $fname ]]
 then
    echo "Valid firstname : $Firstname"
else
    echo "Invalid firstname"
fi
}
lastName(){
Lastname=$1
lname=$(echo "$Lastname" |awk '/^[A-Z]{1}[a-z]*$/{print $0}')
if [[ $lname ]]
then
echo "Valid  lastname : $Lastname"
else
echo "Invalid lastname"
fi
}

mobileNumber(){
digit=$1
mob=$(echo "$digit" |awk '/^[0-9]{10}*$/{print $0}')
if [[ $mob ]]
  then 
    echo "$digit is a valid number" 
else 
    echo "oops" 
fi
}
emailId(){
email=$1
emailid=$(echo "$email" |awk '/^([a-zA-Z0-9]+)@([a-zA-Z]+)([.com])?([.co.in])?/{print $0}')
#emailid=$( echo "$email" |awk '/^([a-z0-9]+)@([a-z0-9-]+)?([a-z]{2,8})(\[a-z]){2,8})?/{print $0}')
if [[ $emailid  ]]
then
echo "valid email $email"
else
echo "invalid email"
fi
} 
password(){
pass=$1
#passwor=$(echo "$pass" |awk '[\w@-]{8,20}$/{print $0}')
if [[ ${#pass} -ge 6 && "$pass" == *[A-Z]* && "$pass" == *[a-z]* && "$pass" == *[0-9]* ]]
then
echo "valid password"
else
echo "invalid password"
fi
}
userDetails(){
echo "enter the Firstname"
read Firstname
firstName $Firstname
echo "enter the Lastname"
read Lastname
lastName $Lastname
echo "enter the MobileNumber"
read mobilenum
mobileNumber $mobilenum
echo "enter the emailid "
read email
emailId $email
echo "Enter the password"
read passwd
password  $passwd
}
userDetails
