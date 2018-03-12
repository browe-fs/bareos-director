# Bareos director

Bareos is a set of computer programs that permits the system administrator to manage backup, recovery, and verification of computer data across a network of computers of different kinds. Bareos can also run entirely upon a single computer and can backup to various types of media, including tape and disk. 

- Bareos director version 17.2 from a centos:7 images

### Example docker run statement

```
$ docker run --name bareos-director \
-e BAREOS_DB_PASSWORD=zootown \
-v /etc/bareos:/etc/bareos:z \
--link bareos-db:db \
-p 9101:9101 \
-d testb
```


