# clear 180 days ago logfile
# create by zhouzx on 2018/05/11

LOG_PATH=$1
DAYS=$2
REG=$3

# begin clear
date
echo "clear ${DAYS} days ago file like ${REG}* in ${LOG_PATH} "

find $LOG_PATH -mtime +${DAYS} -name "${REG}*" -type f -exec ls -l {} \; | awk  '{print "rm file " $9, ",size is " $5}'

find $LOG_PATH -mtime +${DAYS} -name "${REG}*" -type f -exec rm -f {} \;


echo "clear ${DAYS} days ago file in ${LOG_PATH} success!"
# clear success!
date
