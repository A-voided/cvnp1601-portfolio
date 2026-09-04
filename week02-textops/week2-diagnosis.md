week 2 diagnosis 

1 State 
the awk command worked mainly casue it created ssrc-ips.txt and wc -1 confirmed that the file had 40 lines the 
uniq -c ran but it didnt produce the proper counts becasue the ip addresses werent groupe together 

2 Root Cause
it should be that uniq only combinmes with adjacent identical lines the source ip in src-ips.txt werent
sorted so any repeated addresses were spereated and counted as separate groups 

3 Remediation 
first thing we have to fix is the sort ip problem so we could run a sort src-ips.txt | uniw -c | sort -rn | head 
-5 sorting helps with getting the identical addresses next to one another allowing uniq -c to count all of them 
together 

4 Verification 
we can verify this fix by first ruunning the correct command stated above and the 10.0.0.5 should now be added in to one entry
second we can use grep and verify the number of occurences with that ip with grep -c '^10\.0\.0\.5$' src-ips.txt
the count should match the other shown commands results.
