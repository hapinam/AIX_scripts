###OS script to delete trace files and keep latest 5 days only##########################################

find $GRID_BASE/$NODENAME/crs/trace/*.trc -type f -mtime +5 -exec rm {} \;
find $GRID_BASE/$NODENAME/crs/trace/*.trm -type f -mtime +5 -exec rm {} \;
find $ORACLE_BASE/diag/rdbms/$ORACLE_SID/$INSTANCE_NAME/trace/*.trc   -type f -mtime +5 -exec rm {} \;
find $ORACLE_BASE/diag/rdbms/$ORACLE_SID/$INSTANCE_NAME/trace/*.trm   -type f -mtime +5 -exec rm {} \;