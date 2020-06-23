##########LVM_Commands
-----------------------


lsvg # display all VGs on machine (online and offline)
lsvg -o # display online VGs
lsvg rootvg       # display all details on VG
lsvg -l rootvg # display all LVs contained in rootvg
lsvg -p rootvg # display all PVs contained in rootvg
################################### 
lspv # display all PVs (hard disks) on machine
lspv -l hdisk0 # list all LVs contained in hdisk0
lspv –p hdisk0        # list all LVs and its range of PPs and its location also mapping of LPs and PPs
###################################
lslv testlv       # list information and details about logical volume in volume group.
lslv -l testlv # list LPs distribution of particular LV and on which PV 
lslv -m testlv # list LPs to PPs mapping of particular LV and copies if exist
###################################
varyonvg datavg # activate volume group
varyoffvg datavg # deactivate volume group
################################### 
chfs -a size=+2G /fs # to increase filesystem by 2 GB
chfs -a size=-512M /fs # to decrease filesystem by 512 MB
###################################
lsfs # list all Filesystems on machine
lsvgfs rootvg # list all filesystems of rootvg
mount # list all mounted FSs
mount /fs # mount or open /fs or logical volume
umount /fs # unmount or close /fs or logical volume
#################################### 
df -kI # disk free and used space (KB)
df -mI # disk free and used space (MB)
df -gI # disk free and used space (GB)