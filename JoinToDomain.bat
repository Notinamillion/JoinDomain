SET /p ADMIN="Enter admin username domain\name"
SET /p DOMAIN= "Enter in domain domain.local"
SET /p PASSWORD="Enter passowrd for domain"

::echo NETDOM /Domain:%DOMAIN% /user:%ADMIN% /password:%PASSWORD% MEMBER MYCOMPUTER /JOINDOMAIN >>%DOMAIN%.bat
::NETDOM /Domain:DOMAIN /user:ADMIN /password:PASSWORD MEMBER MYCOMPUTER /JOINDOMAIN 




echo wmic.exe /interactive:off ComputerSystem Where name=%%computername%% call JoinDomainOrWorkgroup FJoinOptions=3 Name=DOMAIN UserName=ADMIN Password=PASSWORD AccountOU="OU=MyClients;OU=MyOrg;DC=myDom;DC=local" >>%DOMAIN%.bat
wmic.exe /interactive:off ComputerSystem Where name=%computername% call JoinDomainOrWorkgroup FJoinOptions=3 Name=DOMAIN UserName=ADMIN Password=PASSWORD AccountOU="OU=MyClients;OU=MyOrg;DC=myDom;DC=local" 

pause