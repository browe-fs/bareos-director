# Bareos director

- Bareos is a set of computer programs that permits the system administrator to manage backup, recovery, and verification of computer data across a network of computers of different kinds. 

- The Director is the central control program for all the other daemons. It schedules and supervises all the backup, restore, verify and archive operations.

- Bareos director version 17.2 built from a centos:7 image.

### Getting a mysql database container running for the database backend
 
- Mysql 5.5 database backend used

Docker db run statement:

```
docker run --name bareos-db \
-h bareos-db \
-e MYSQL_ROOT_PASSWORD=(DB-Password) \
-p 3306:3306 \
--network=bareos \
-d mysql:5.5 
```
Get terminal inside container:
```
docker exec -ti bareos-director bash
```

### Example director docker run statement

- Director configuration files bareos-dir.conf and bconsole.conf need be add to /etc/bareos before running the image.

Docker director run statement:
```
$ docker run --name bareos-director \
-h (HostName)
-e BAREOS_DB_PASSWORD=(DB-Password) \
-v /etc/bareos:/etc/bareos:z \
--link bareos-db:db \
-p 9101:9101 \
-d testb
```
Get terminal inside container:
```
docker exec -ti bareos-db bash
```

