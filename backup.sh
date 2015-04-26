#!/bin/bash

fd="$(date +%F)"             # full date
dest="/home/backups/${fd}"   # the destination directory to store server backups

# You can backup a single or multiple servers
[ ! -z "$1" ] && servers=("$1") || servers=("10.1.1.86" "10.1.1.84" "10.1.1.83")

mkdir -p ${dest}

for server in ${servers[*]}
do
  start_date="$(date +%F_%T)"
  echo "Starting to backup server: ${server}" >> /tmp/completed_${fd}.rsync
  echo "${start_date}" >> /tmp/completed_${fd}.rsync

  rsync -azAXe ssh --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} ${server}:/ ${dest}/${server}

  end_date="$(date +%F_%T)"
  echo "${end_date}" >> /tmp/completed_${fd}.rsync
  echo "Ended the backup of server ${server}" >> /tmp/completed_${fd}.rsync
  echo "--------------------------------------------------------" >> /tmp/completed_${fd}.rsync
done



compare=$(date --date="10 days ago" +%F)

for d in /home/backups/*;do
  dt=$(date -d ${d##*/} +%s)
  archive=$(date -d $compare +%s)
  [ "${dt}" -lt "${archive}" ] && { rm -r $d; }
done

echo 

