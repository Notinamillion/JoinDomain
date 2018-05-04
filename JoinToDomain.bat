SET /p ADMIN="Enter admin username domain\name "
SET /p DOMAIN= "Enter in domain domain.local "
SET /p PASSWORD="Enter passowrd for domain "

::echo NETDOM /Domain:%DOMAIN% /user:%ADMIN% /password:%PASSWORD% MEMBER MYCOMPUTER /JOINDOMAIN >>%DOMAIN%.bat


shutdown -r -t 0

