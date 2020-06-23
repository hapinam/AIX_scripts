###to print df -gI in hp-ux:
----------------------------

df -Pk | awk '{ 
 if ( NR == 1 ) { next } 
 if ( NF == 6 ) { print } 
 if ( NF == 5 ) { next } 
 if ( NF == 1 ) { 
 getline record; 
 $0 = $0 record 
 print $0 
 } 
 }' | awk '
BEGIN {print "Filesystem                                    Mount Point                 Total GB   Avail GB    Used GB  Used"
       print "--------------------------------------------- ------------------------- ---------- ---------- ---------- -----"}
END {print ""}
/dev/ || /^[0-9a-zA-Z.]*:\// {
printf ("%-45.45s %-25s %10.2f %10.2f %10.2f %4.0f%\n",$1,$6,$2/1024/1024,$4/1024/1024,$3/1024/1024,$5)
}'