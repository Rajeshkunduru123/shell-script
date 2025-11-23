#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manual exit if error comes.

else
    echo "You are super user."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql...FAILURE"
    exit 1

fi

dnf install mysql -y

echo "is script proceeding?"


dnf install git -y
