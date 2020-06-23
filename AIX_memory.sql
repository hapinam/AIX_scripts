svmon -G -O unit=GB | awk  '/^memory/ {m=$2};/^in use/ { print 100*$3 / m}'

svmon -G -O unit=GB | awk  '/^memory/ {m=$2};/^in use/ { print $3 }'

--top 15 Processes using Memory:
-------------------------------
svmon -Pt15 | perl -e 'while(<>){print if($.==2||$&&&!$s++);$.=0 if(/^-+$/)}'