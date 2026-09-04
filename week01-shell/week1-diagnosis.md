WEEK 1 Diagnosis

1 State 

The first command worked correctly and captured 215 lines that were conatining error into the /incident.txt. the wc -1 command 
confirmed that the files containd 215 lines the second command also worked but it used the same output files and replaced the 
original contents only leaving 3 lines containing critical 

2 Root Cause 

Most likely cause of this is the use of > on the second command > overrights exsisting files instead of adding to them 
so the 215 that was there then got replaced by 3 critcals this is no evidence in the transcript that the log rotation caused the
evidence to disappear

3 Remedatiation 

The first fix is to protect the original evidence by using >> when adding additional results and info to the same file the trainee 
shouldve ran grep -i "critical" syslog >> ~/incident.txt this would make the critical results mesh into the exsisting 215 lines instead
of over righting them 

4 Verification 

verifying the fix from 2 independent angles is the approch i would take
first run wc-1 /incident.txt and confirm that the files has more than the original 215 lines 
second use grep -i "error /incident.txt | wc-1 and grep -i "critical" /incident.txt |wc -1 to confirm 
tthat both types of evidence are still present.

integirty of evidence is highly important during investagaing because accidentally removing or overwriting collected evidence can
cause important info to be lost. using append and verifiying the resulting file helps reserve the original evidence and reduces
risk of making improper security conclusions.
