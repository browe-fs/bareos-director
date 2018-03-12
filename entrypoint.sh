#!/usr/bin/env bash
set -e

#Run command 
/usr/sbin/bareos-dir -c /etc/bareos/bareos-dir.conf


#keep container alive
tail -f /dev/null
