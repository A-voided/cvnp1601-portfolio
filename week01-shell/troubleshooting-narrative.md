Trouble shooting narritive what went wrong/couldve gone wrong i encounterd a git problem when itried to acces the status of my 
week01-shell folder it found it wasnt a git repository also found permission denied messages while using find which im pretty 
sure were system errors or issues caused from protected directorys 

2 What evidence did you check first 

First i checked my current location with pwd and examined directories with ls -la when git reported the folder was
not a repository i searcehd for .git with find -type d -name ".git" 2>/dev/null

3 What did i try 

i check the week01-shell directory and attempted a git status 
after it reported taht it wasnt a repository i had searched my home directory
found the cvnp1601-portfoilio which was the set repository

4 What fixed it

i changed to the cvnp1601-portfolio to have access to the repo ran a git status to verify it was working properly 
so i could continue to do my work in the folder to submit pushes along with moving the location of week01_shell 

5 how did you verify the result 

i verified the repo by running git status it reported that i was on the main branch and that the tree was clean 
i also used find to confirm that week01-shell wasnt located in the repo but then relocated it to the repo so i could upload the 
proper info 

6 What was the security impact 

accurate command evidence reduces the guessing in trouble shooting and security incidents 
permission erros can indicate proteced sys locations while bad file handling can cause evidence to be overwritten or lost
carefullt checking command output and ferifying results helps preserve evidence and prevents poorly made conclusions 
