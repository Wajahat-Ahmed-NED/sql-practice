Microsoft Windows [Version 10.0.19042.1110]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Wajahat Bhai>cd../..

C:\>cd xampp/mysql/bin

C:\xampp\mysql\bin>mysql -u root -p -h localhost
Enter password:
ERROR 2002 (HY000): Can't connect to MySQL server on 'localhost' (10061)

C:\xampp\mysql\bin>mysql -u root -p -h localhost
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use sqlthapa;
Database changed
MariaDB [sqlthapa]> show tables;
+--------------------+
| Tables_in_sqlthapa |
+--------------------+
| students           |
| testnull           |
+--------------------+
2 rows in set (0.001 sec)

MariaDB [sqlthapa]> create table defaultstd
    -> (id int not null default 0,
    -> name varchar(55) not null default 'unnamed'
    -> );
Query OK, 0 rows affected (0.438 sec)

MariaDB [sqlthapa]> desc defaultstd;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(11)     | NO   |     | 0       |       |
| name  | varchar(55) | NO   |     | unnamed |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.039 sec)

MariaDB [sqlthapa]> insert into defaultstd() values();
Query OK, 1 row affected (0.339 sec)

MariaDB [sqlthapa]> select * from defaultstd;
+----+---------+
| id | name    |
+----+---------+
|  0 | unnamed |
+----+---------+
1 row in set (0.002 sec)

MariaDB [sqlthapa]> alter table defaultstd add class int;
Query OK, 0 rows affected (0.213 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [sqlthapa]> desc defaultstd;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(11)     | NO   |     | 0       |       |
| name  | varchar(55) | NO   |     | unnamed |       |
| class | int(11)     | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.099 sec)

MariaDB [sqlthapa]> alter table defaultstd drop column class;
Query OK, 0 rows affected (0.190 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [sqlthapa]> desc defaultstd;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(11)     | NO   |     | 0       |       |
| name  | varchar(55) | NO   |     | unnamed |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.031 sec)

MariaDB [sqlthapa]> create table ali
    -> (stdid int not null,
    -> class int,
    -> name varchar(55),
    -> primarykey(stdid)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(stdid)
)' at line 5
MariaDB [sqlthapa]> create table ali
    ->     -> (stdid int not null,
    ->     -> class int,
    ->     -> name varchar(55),
    ->     -> primarykey(stdid)
    ->
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> (stdid int not null,
    -> class int,
    -> name varchar(55),
    -> pri...' at line 2
MariaDB [sqlthapa]>  create table ali
    ->     ->     -> (stdid int not null,
    ->     ->     -> class int,
    ->     ->     -> name varchar(55),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '->     -> (stdid int not null,
    ->     -> class int,
    ->     -> name va...' at line 2
MariaDB [sqlthapa]> create table ali;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [sqlthapa]> create table ali
    -> (
    -> stdid int not null,
    -> age int,
    -> name varchar(55),
    -> primary key (stdid));
Query OK, 0 rows affected (0.287 sec)

MariaDB [sqlthapa]> desc ali;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| stdid | int(11)     | NO   | PRI | NULL    |       |
| age   | int(11)     | YES  |     | NULL    |       |
| name  | varchar(55) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.034 sec)

MariaDB [sqlthapa]> insert into ali (stdid,age,name) values(1,20,'wajahat');
Query OK, 1 row affected (0.060 sec)

MariaDB [sqlthapa]> select * from ali;
+-------+------+---------+
| stdid | age  | name    |
+-------+------+---------+
|     1 |   20 | wajahat |
+-------+------+---------+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> create table waji
    -> (stdid int not null auto_increment,
    -> name varchar(55),
    -> age int ,
    -> primary key (stdid)
    -> );
Query OK, 0 rows affected (0.286 sec)

MariaDB [sqlthapa]> desc waji;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| stdid | int(11)     | NO   | PRI | NULL    | auto_increment |
| name  | varchar(55) | YES  |     | NULL    |                |
| age   | int(11)     | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.032 sec)

MariaDB [sqlthapa]> insert into waji (name,age) values('wajahat',12);
Query OK, 1 row affected (0.098 sec)

MariaDB [sqlthapa]> select * from waji
    -> ;
+-------+---------+------+
| stdid | name    | age  |
+-------+---------+------+
|     1 | wajahat |   12 |
+-------+---------+------+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> insert into waji (name,age) values('wajahatali',12);
Query OK, 1 row affected (0.058 sec)

MariaDB [sqlthapa]> select * from waji
    -> ;
+-------+------------+------+
| stdid | name       | age  |
+-------+------------+------+
|     1 | wajahat    |   12 |
|     2 | wajahatali |   12 |
+-------+------------+------+
2 rows in set (0.001 sec)

MariaDB [sqlthapa]> show tables;
+--------------------+
| Tables_in_sqlthapa |
+--------------------+
| ali                |
| defaultstd         |
| students           |
| testnull           |
| waji               |
+--------------------+
5 rows in set (0.00  2 sec)

MariaDB [sqlthapa]> drop table students;
Query OK, 0 rows affected (0.595 sec)

MariaDB [sqlthapa]> create table students
    -> (
    -> id int not null auto_increment,
    -> fanme varchar(55),
    -> lname varchar(55),
    -> age int,
    -> primary key(id)
    -> );
Query OK, 0 rows affected (0.263 sec)

MariaDB [sqlthapa]> desc students;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| fanme | varchar(55) | YES  |     | NULL    |                |
| lname | varchar(55) | YES  |     | NULL    |                |
| age   | int(11)     | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
4 rows in set (0.085 sec)

MariaDB [sqlthapa]> insert into students(fname,lname,age) values ('wajahat','ahmed',21),('ali','khan',23),('nizam','ali',12),('junaid','khan',23),('Hannan','ashraf',25);
ERROR 1054 (42S22): Unknown column 'fname' in 'field list'
MariaDB [sqlthapa]> insert into students(fanme,lname,age) values ('wajahat','ahmed',21),('ali','khan',23),('nizam','ali',12),('junaid','khan',23),('Hannan','ashraf',25);
Query OK, 5 rows affected (0.091 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [sqlthapa]> select * from students;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  1 | wajahat | ahmed  |   21 |
|  2 | ali     | khan   |   23 |
|  3 | nizam   | ali    |   12 |
|  4 | junaid  | khan   |   23 |
|  5 | Hannan  | ashraf |   25 |
+----+---------+--------+------+
5 rows in set (0.000 sec)

MariaDB [sqlthapa]> select * from students where age=23;
+----+--------+-------+------+
| id | fanme  | lname | age  |
+----+--------+-------+------+
|  2 | ali    | khan  |   23 |
|  4 | junaid | khan  |   23 |
+----+--------+-------+------+
2 rows in set (0.051 sec)

MariaDB [sqlthapa]> select fanme from students where age=25;
+--------+
| fanme  |
+--------+
| Hannan |
+--------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select fanme,lname from students where age=23;
+--------+-------+
| fanme  | lname |
+--------+-------+
| ali    | khan  |
| junaid | khan  |
+--------+-------+
2 rows in set (0.000 sec)

MariaDB [sqlthapa]> select id from students where age=21;
+----+
| id |
+----+
|  1 |
+----+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> update students set age=23 where fanme='nizam';
Query OK, 1 row affected (0.143 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sqlthapa]> select * from students where fanme='nizam';
+----+-------+-------+------+
| id | fanme | lname | age  |
+----+-------+-------+------+
|  3 | nizam | ali   |   23 |
+----+-------+-------+------+
1 row in set (0.002 sec)

MariaDB [sqlthapa]> select * from students where fanme='junaid';
+----+--------+-------+------+
| id | fanme  | lname | age  |
+----+--------+-------+------+
|  4 | junaid | khan  |   23 |
+----+--------+-------+------+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> delete from students where fanme='junaid';
Query OK, 1 row affected (0.098 sec)

MariaDB [sqlthapa]> select* from students;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  1 | wajahat | ahmed  |   21 |
|  2 | ali     | khan   |   23 |
|  3 | nizam   | ali    |   23 |
|  5 | Hannan  | ashraf |   25 |
+----+---------+--------+------+
4 rows in set (0.000 sec)

MariaDB [sqlthapa]> select* from students where fanme='hannan';
+----+--------+--------+------+
| id | fanme  | lname  | age  |
+----+--------+--------+------+
|  5 | Hannan | ashraf |   25 |
+----+--------+--------+------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> delete from students;
Query OK, 4 rows affected (0.072 sec)

MariaDB [sqlthapa]> select* from students;
Empty set (0.000 sec)

MariaDB [sqlthapa]>
MariaDB [sqlthapa]>