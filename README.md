# JoinDomain
Join domain scripts

#Tested
# Batch file cmd

Script 1 (manually enter details)
You will be asked to enter a username that has rights to join the domain
You will then be asked to enter in your domain name
Finally you will be asked to enter the password that matches the username you entered 


Script 2 (Automatically join)
How to edit script to automatically join domain

NETDOM /Domain:<enter domain name> /user:<enter admin username> /password:<enter password> MEMBER MYCOMPUTER /JOINDOMAIN 
shutdown -r -t 0
