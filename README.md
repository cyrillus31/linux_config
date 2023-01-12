## BASH_scripts_CentOS

Here I will be keeping BASH scripts and notes to maintain my workflow wherever.

Managing users and adding super user privileges with visudo https://youtu.be/NhjU0m7aNaA

## Notes
1. Create user

adduser username


2. Add password to user 

passwd usernamepassword


3. Add root privelages to the user. Edit sudo file  

visudo

# the file will open and after the line with
# root	ALL=(ALL)	ALL
# add the following line:

kirill	ALL=(ALL)	ALL
