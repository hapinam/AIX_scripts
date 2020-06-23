###to print du -sg in hp-ux:
----------------------------

echo `du -sk /data01/stage` | awk '{ print $1 / 1024/1024 }'