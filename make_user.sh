#!/bin/bash

#script should be execute with the sudo user/root access.

if [[ "${UID}" -ne 0 ]] ;then
 echo "please run with sudo or root user."
 exit 1
fi

#useruser should provide atleast one argument as username else guide him

if [[ "${#}" -lt 1  ]]
then
 echo "usage: ${0} USER_NAME [COMMENT]....."
 echo 'create a user with USER_NAME and comments field of COMMENT'
 exit 1
fi

#store 1st argument as user name

USER_NAME="${1}"


#in case of more then one argument, store it is a account comments

shift
COMMENT="${@}"

#create a password

PASSWORD=$(date +%s%N)

#create the user

useradd -c "${COMMENT}" -m $USER_NAME

#check if user is successfully created or not

if [[ $? -ne 0 ]]; then

echo "the account is not created"
exit 1

fi

#set the password for user

echo $PASSWORD | passwd --stdin  $USER_NAME

#check if password is successfully set or not

if [[ $? -ne 0 ]]; then
echo 'password could not be set successfully'
exit 1

fi

#force password change on first login

passwd -e $USER_NAME

#disply the user_name,password and the host where the user was created

echo
echo "Username : $USER_NAME"
echo
echo "Password : $PASSWORD"
echo
echo $(Hostname)






















