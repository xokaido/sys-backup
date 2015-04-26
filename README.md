# sys-backup


The script is able to backup a whole system (either single host or multiple).

Both systems (the one that you are going to backup and the one that you running this script on)
should have rsync installed. 

The script automatically deletes the backups that are older than 10 days.
Backups are a regular directory hierarchy from /
Example backed up directory structure:

root@lxdeb001:~# ls -l /home/backups/2015-04-08/10.1.1.84/
total 92
drwxr-xr-x   2 root    root 4096 Jan 15 10:31 bin
drwxr-xr-x   4 root    root 4096 Jul 17  2014 boot
drwxr-xr-x   3 root    root 4096 Feb  2 16:06 build
drwxr-xr-x   2 root    root 4096 Nov 30 06:28 dev
drwxr-xr-x 100 root    root 4096 Apr  2 10:38 etc
drwxr-xr-x   9 root    root 4096 Feb  7 14:42 home
lrwxrwxrwx   1 root    root   33 Jul 17  2014 initrd.img -> /boot/initrd.img-3.5.0-54-generic
drwxr-xr-x  18 root    root 4096 Sep  2  2014 lib
drwxr-xr-x   2 root    root 4096 Feb 27 10:55 lib64
drwxr-xr-x   2 root    root 4096 Jun  4  2013 media
drwxr-xr-x   2 root    root 4096 Jan 25  2013 mnt
drwxr-xr-x   2 root    root 4096 Jun  4  2013 opt
dr-xr-xr-x   2 root    root 4096 Nov 30 06:28 proc
drwx------  13 root    root 4096 Apr  6 23:09 root
drwxr-xr-x   2 root    root 4096 Apr  8 03:27 run
drwxr-xr-x   2 root    root 4096 Feb 27 10:55 sbin
drwxr-xr-x   2 root    root 4096 Mar  5  2012 selinux
drwxr-xr-x   2 root    root 4096 Jun  4  2013 srv
dr-xr-xr-x   2 root    root 4096 Nov 30 06:28 sys
drwxrwxrwt   2 root    root 4096 Apr  8 03:27 tmp
drwxr-xr-x  10 root    root 4096 Nov 29 13:33 usr
drwxr-xr-x  12 root    root 4096 Nov 30 15:45 var
lrwxrwxrwx   1 root    root   29 Jul 17  2014 vmlinuz -> boot/vmlinuz-3.5.0-54-generic




You can use this script and you can't.
You can use it when you find it useful and you can't use it when you don't know what it does and how to use it.


Thanks
