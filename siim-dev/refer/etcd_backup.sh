#!/bin/sh -x

BAK_DEST=taco@10.13.1.99
BAK_DIR=etcd_bak
DATE=$(date +%Y-%m-%d)

source /etc/etcd.env
ETCDCTL_API=3 /usr/local/bin/etcdctl --endpoints=$ETCD_LISTEN_CLIENT_URLS --cacert=$ETCD_TRUSTED_CA_FILE --cert=$ETCD_CERT_FILE --key=$ETCD_KEY_FILE snapshot save /tmp/etcd-snapshot.db | tee /var/log/etcd-backup.log

scp /tmp/etcd-snapshot.db $BAK_DEST:$BAK_DIR/etcd-snapshot_$HOSTNAME-$DATE.db | tee -a /var/log/etcd-backup.log
ssh $BAK_DEST "find $BAK_DIR -type f -mtime +2 -exec rm -f {} \;" | tee -a /var/log/etcd-backup.log
