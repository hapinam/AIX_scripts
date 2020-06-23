####to check file system and make them mount and unmount for maintenence##################
# df -gi
Filesystem    GB blocks      Free %Used    Iused %Iused Mounted on
/dev/hd4           3.00      2.64   13%    18134     3% /
/dev/hd2           5.25      2.62   51%    44654     7% /usr
/dev/hd9var        2.75      2.29   17%    10926     2% /var
/dev/hd3           4.00      3.99    1%      315     1% /tmp
/dev/hd1           4.25      2.99   30%      925     1% /home
/dev/hd11admin      0.25      0.25    1%        5     1% /admin
/proc                 -         -    -        -      - /proc
/dev/hd10opt       3.50      3.36    5%     7380     1% /opt
/dev/livedump      1.25      1.25    1%        4     1% /var/adm/ras/livedump
/dev/fslv01       90.00     41.83   54%   219426     3% /oracle
/dev/fslv02      998.00     69.77   94%       42     1% /oradata
/dev/fslv00        5.00      5.00    1%        5     1% /databack
# lsvg
altinst_rootvg
rootvg
oraswvg
datavg
# umount /oracle
# umount /oradata
# umount /databack
# varyoffvg oraswvg
#
# varyoffvg datavg
#
#
#
#
# lsvg -o
rootvg
#
# df -gI
Filesystem    GB blocks      Used      Free %Used Mounted on
/dev/hd4           3.00      0.36      2.64   13% /
/dev/hd2           5.25      2.63      2.62   51% /usr
/dev/hd9var        2.75      0.46      2.29   17% /var
/dev/hd3           4.00      0.01      3.99    1% /tmp
/dev/hd1           4.25      1.26      2.99   30% /home
/dev/hd11admin      0.25      0.00      0.25    1% /admin
/proc                 -         -         -    - /proc
/dev/hd10opt       3.50      0.14      3.36    5% /opt
/dev/livedump      1.25      0.00      1.25    1% /var/adm/ras/livedump
#
