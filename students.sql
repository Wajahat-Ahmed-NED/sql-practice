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



Microsoft Windows [Version 10.0.19042.1110]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Wajahat Bhai>cd ../..

C:\>cd xampp/mysql/bin

C:\xampp\mysql\bin>mysql -u root -p -h localhost
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use sqlthapa;
Database changed
MariaDB [sqlthapa]> select * from students;
Empty set (0.349 sec)

MariaDB [sqlthapa]> desc students;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| fanme | varchar(55) | YES  |     | NULL    |                |
| lname | varchar(55) | YES  |     | NULL    |                |
| age   | int(11)     | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
4 rows in set (0.039 sec)

MariaDB [sqlthapa]> insert into students(fname,lname,age) values('ali','ahmed',23),('zahid','khaliq',29),('wajahat','ahmed',43),('wajahat','naveed',20),('hannan','ashraf',54);
ERROR 1054 (42S22): Unknown column 'fname' in 'field list'
MariaDB [sqlthapa]> insert into students(fanme,lname,age) values('ali','ahmed',23),('zahid','khaliq',29),('wajahat','ahmed',43),('wajahat','naveed',20),('hannan','ashraf',54);
Query OK, 5 rows affected (0.086 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [sqlthapa]> select* from students;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  6 | ali     | ahmed  |   23 |
|  7 | zahid   | khaliq |   29 |
|  8 | wajahat | ahmed  |   43 |
|  9 | wajahat | naveed |   20 |
| 10 | hannan  | ashraf |   54 |
+----+---------+--------+------+
5 rows in set (0.000 sec)

MariaDB [sqlthapa]> select distinct fname from students;
ERROR 1054 (42S22): Unknown column 'fname' in 'field list'
MariaDB [sqlthapa]> select distinct fanme from students;
+---------+
| fanme   |
+---------+
| ali     |
| zahid   |
| wajahat |
| hannan  |
+---------+
4 rows in set (0.010 sec)

MariaDB [sqlthapa]> select age from students order by age;
+------+
| age  |
+------+
|   20 |
|   23 |
|   29 |
|   43 |
|   54 |
+------+
5 rows in set (0.001 sec)

MariaDB [sqlthapa]> select distinct age from students order by age;
+------+
| age  |
+------+
|   20 |
|   23 |
|   29 |
|   43 |
|   54 |
+------+
5 rows in set (0.001 sec)

MariaDB [sqlthapa]> select distinct age from students order by age desc;
+------+
| age  |
+------+
|   54 |
|   43 |
|   29 |
|   23 |
|   20 |
+------+
5 rows in set (0.000 sec)

MariaDB [sqlthapa]> select distinct fanme from students order by fanme ;
+---------+
| fanme   |
+---------+
| ali     |
| hannan  |
| wajahat |
| zahid   |
+---------+
4 rows in set (0.001 sec)

MariaDB [sqlthapa]> select  fanme from students order by fanme ;
+---------+
| fanme   |
+---------+
| ali     |
| hannan  |
| wajahat |
| wajahat |
| zahid   |
+---------+
5 rows in set (0.000 sec)

MariaDB [sqlthapa]> select  fanme from students order by fanme desc;
+---------+
| fanme   |
+---------+
| zahid   |
| wajahat |
| wajahat |
| hannan  |
| ali     |
+---------+
5 rows in set (0.000 sec)

MariaDB [sqlthapa]> select  fanme from students order by fanme desc limit 3;
+---------+
| fanme   |
+---------+
| zahid   |
| wajahat |
| wajahat |
+---------+
3 rows in set (0.000 sec)

MariaDB [sqlthapa]> select  fanme from students order by fanme limit 3;
+---------+
| fanme   |
+---------+
| ali     |
| hannan  |
| wajahat |
+---------+
3 rows in set (0.000 sec)

MariaDB [sqlthapa]> select fanme from students where fanme like '%hat%';
+---------+
| fanme   |
+---------+
| wajahat |
| wajahat |
+---------+
2 rows in set (0.034 sec)

MariaDB [sqlthapa]> select fanme from students where fanme like 'w%';
+---------+
| fanme   |
+---------+
| wajahat |
| wajahat |
+---------+
2 rows in set (0.000 sec)

MariaDB [sqlthapa]> select fanme from students where fanme like 'z%';
+-------+
| fanme |
+-------+
| zahid |
+-------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select max(age) from students;
+----------+
| max(age) |
+----------+
|       54 |
+----------+
1 row in set (0.070 sec)

MariaDB [sqlthapa]> select min(age) from students;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select sum(age) from students;
+----------+
| sum(age) |
+----------+
|      169 |
+----------+
1 row in set (0.017 sec)

MariaDB [sqlthapa]> select count(id) from students;
+-----------+
| count(id) |
+-----------+
|         5 |
+-----------+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> select avg(id) from students;
+---------+
| avg(id) |
+---------+
|  8.0000 |
+---------+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> select avg(age) from students;
+----------+
| avg(age) |
+----------+
|  33.8000 |
+----------+
1 row in set (0.000 sec)


Microsoft Windows [Version 10.0.19042.1110]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Wajahat Bhai>cd../..

C:\>cd xampp/mysql/bin

C:\xampp\mysql\bin>mysql -u root -p -h localhost
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use sqlthapa;
Database changed
MariaDB [sqlthapa]> select * from students where age=25;
Empty set (0.151 sec)

MariaDB [sqlthapa]> select * from students where age=21;
Empty set (0.000 sec)

MariaDB [sqlthapa]> select * from students;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  6 | ali     | ahmed  |   23 |
|  7 | zahid   | khaliq |   29 |
|  8 | wajahat | ahmed  |   43 |
|  9 | wajahat | naveed |   20 |
| 10 | hannan  | ashraf |   54 |
+----+---------+--------+------+
5 rows in set (0.000 sec)

MariaDB [sqlthapa]> select * from students where age=23;
+----+-------+-------+------+
| id | fanme | lname | age  |
+----+-------+-------+------+
|  6 | ali   | ahmed |   23 |
+----+-------+-------+------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select * from students where age!=23;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  7 | zahid   | khaliq |   29 |
|  8 | wajahat | ahmed  |   43 |
|  9 | wajahat | naveed |   20 |
| 10 | hannan  | ashraf |   54 |
+----+---------+--------+------+
4 rows in set (0.050 sec)

MariaDB [sqlthapa]> select * from students where age>=23;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  6 | ali     | ahmed  |   23 |
|  7 | zahid   | khaliq |   29 |
|  8 | wajahat | ahmed  |   43 |
| 10 | hannan  | ashraf |   54 |
+----+---------+--------+------+
4 rows in set (0.000 sec)

MariaDB [sqlthapa]> select * from students where age<23;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  9 | wajahat | naveed |   20 |
+----+---------+--------+------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select * from students where age<=23;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  6 | ali     | ahmed  |   23 |
|  9 | wajahat | naveed |   20 |
+----+---------+--------+------+
2 rows in set (0.001 sec)

MariaDB [sqlthapa]> select * from students where age between 22 and 25;
+----+-------+-------+------+
| id | fanme | lname | age  |
+----+-------+-------+------+
|  6 | ali   | ahmed |   23 |
+----+-------+-------+------+
1 row in set (0.013 sec)

MariaDB [sqlthapa]> select * from students where age>=20 && age<=25;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  6 | ali     | ahmed  |   23 |
|  9 | wajahat | naveed |   20 |
+----+---------+--------+------+
2 rows in set (0.001 sec)

MariaDB [sqlthapa]> select * from students where age not between 22 and 25;
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  7 | zahid   | khaliq |   29 |
|  8 | wajahat | ahmed  |   43 |
|  9 | wajahat | naveed |   20 |
| 10 | hannan  | ashraf |   54 |
+----+---------+--------+------+
4 rows in set (0.001 sec)

MariaDB [sqlthapa]> select * from students where fanme in ('wajahat','zahid','hannan');
+----+---------+--------+------+
| id | fanme   | lname  | age  |
+----+---------+--------+------+
|  7 | zahid   | khaliq |   29 |
|  8 | wajahat | ahmed  |   43 |
|  9 | wajahat | naveed |   20 |
| 10 | hannan  | ashraf |   54 |
+----+---------+--------+------+
4 rows in set (0.043 sec)

MariaDB [sqlthapa]> select * from students where fanme in ('rwajahat','zahid','hannan');
+----+--------+--------+------+
| id | fanme  | lname  | age  |
+----+--------+--------+------+
|  7 | zahid  | khaliq |   29 |
| 10 | hannan | ashraf |   54 |
+----+--------+--------+------+
2 rows in set (0.001 sec)

MariaDB [sqlthapa]> select concat('wajahat'," ",'ahmed') as fullname;
+---------------+
| fullname      |
+---------------+
| wajahat ahmed |
+---------------+
1 row in set (0.064 sec)

MariaDB [sqlthapa]> select concat('wajahat'," ",'ahmed') as fullnam;;
+---------------+
| fullnam       |
+---------------+
| wajahat ahmed |
+---------------+
1 row in set (0.001 sec)

ERROR: No query specified

MariaDB [sqlthapa]> select concat('wajahat'," ",'ahmed') ;
+-------------------------------+
| concat('wajahat'," ",'ahmed') |
+-------------------------------+
| wajahat ahmed                 |
+-------------------------------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select concat(fanme,' ',lname) from students as fullname;
+-------------------------+
| concat(fanme,' ',lname) |
+-------------------------+
| ali ahmed               |
| zahid khaliq            |
| wajahat ahmed           |
| wajahat naveed          |
| hannan ashraf           |
+-------------------------+
5 rows in set (0.001 sec)

MariaDB [sqlthapa]> select reverse('wajahat');
+--------------------+
| reverse('wajahat') |
+--------------------+
| tahajaw            |
+--------------------+
1 row in set (0.012 sec)

MariaDB [sqlthapa]> select concat('wajahat',reverse('wajahat')) ;
+--------------------------------------+
| concat('wajahat',reverse('wajahat')) |
+--------------------------------------+
| wajahattahajaw                       |
+--------------------------------------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select concat('wajahat',reverse('wajahat')) as palindrome ;
+----------------+
| palindrome     |
+----------------+
| wajahattahajaw |
+----------------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> select char_length('wajahat');
+------------------------+
| char_length('wajahat') |
+------------------------+
|                      7 |
+------------------------+
1 row in set (0.047 sec)

MariaDB [sqlthapa]> select upper('wajahat');
+------------------+
| upper('wajahat') |
+------------------+
| WAJAHAT          |
+------------------+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> select lower('WJALKDSH');
+-------------------+
| lower('WJALKDSH') |
+-------------------+
| wjalkdsh          |
+-------------------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> create table timestu
    -> (name varchar(55),
    -> dob date,
    -> dot time,
    -> bt datetime);
Query OK, 0 rows affected (0.353 sec)

MariaDB [sqlthapa]> desc timestu;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(55) | YES  |     | NULL    |       |
| dob   | date        | YES  |     | NULL    |       |
| dot   | time        | YES  |     | NULL    |       |
| bt    | datetime    | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.096 sec)

MariaDB [sqlthapa]> insert into timestu values('wajahat','2001-05-07','6-9-09','2001-05-07  6-9-09');
Query OK, 1 row affected, 1 warning (0.078 sec)

MariaDB [sqlthapa]> select * from timestu;
+---------+------------+----------+---------------------+
| name    | dob        | dot      | bt                  |
+---------+------------+----------+---------------------+
| wajahat | 2001-05-07 | 00:00:06 | 2001-05-07 06:09:09 |
+---------+------------+----------+---------------------+
1 row in set (0.000 sec)

MariaDB [sqlthapa]> insert into timestu values('saqib',curdate(),curtime(),now());
Query OK, 1 row affected (0.128 sec)

MariaDB [sqlthapa]> select * from timestu;
+---------+------------+----------+---------------------+
| name    | dob        | dot      | bt                  |
+---------+------------+----------+---------------------+
| wajahat | 2001-05-07 | 00:00:06 | 2001-05-07 06:09:09 |
| saqib   | 2021-08-03 | 01:41:45 | 2021-08-03 01:41:45 |
+---------+------------+----------+---------------------+
2 rows in set (0.000 sec)

MariaDB [sqlthapa]> create table customers
    -> cid int not null auto_increment,
    -> cname varchar(55),
    -> email varchar(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'int not null auto_increment,
cname varchar(55),
email varchar(100))' at line 2
MariaDB [sqlthapa]> show errors;
+-------+------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Level | Code | Message                                                                                                                                                                                                                 |
+-------+------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Error | 1064 | You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'int not null auto_increment,
cname varchar(55),
email varchar(100))' at line 2 |
+-------+------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.001 sec)

MariaDB [sqlthapa]> create table customers
    -> cid int not null auto_increment,
    -> cname varchar(55),
    -> email varchar(100),
    -> primary key(cid)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'int not null auto_increment,
cname varchar(55),
email varchar(100),
primary k...' at line 2
MariaDB [sqlthapa]> create table customers
    -> cid int not null auto_increment primary key,
    -> cname varchar(55),
    -> email varchar(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'int not null auto_increment primary key,
cname varchar(55),
email varchar(100))' at line 2
MariaDB [sqlthapa]> create table customers
    -> (
    -> cid int not null auto_increment primary key,
    -> cname varchar(55),
    -> email varchar(100));
Query OK, 0 rows affected (0.265 sec)

MariaDB [sqlthapa]> desc customers;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| cid   | int(11)      | NO   | PRI | NULL    | auto_increment |
| cname | varchar(55)  | YES  |     | NULL    |                |
| email | varchar(100) | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
3 rows in set (0.043 sec)

MariaDB [sqlthapa]> create table orders(oid int not null auto_increment primary key,
    -> orderdate date,
    -> cid int,
    -> foreign key(cid) references customers(cid));
Query OK, 0 rows affected (0.285 sec)

MariaDB [sqlthapa]> desc orders;
+-----------+---------+------+-----+---------+----------------+
| Field     | Type    | Null | Key | Default | Extra          |
+-----------+---------+------+-----+---------+----------------+
| oid       | int(11) | NO   | PRI | NULL    | auto_increment |
| orderdate | date    | YES  |     | NULL    |                |
| cid       | int(11) | YES  | MUL | NULL    |                |
+-----------+---------+------+-----+---------+----------------+
3 rows in set (0.036 sec)

MariaDB [sqlthapa]> alter table order add amount int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order add amount int' at line 1
MariaDB [sqlthapa]> alter table orders add amount int;
Query OK, 0 rows affected (0.177 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [sqlthapa]> desc orders;
+-----------+---------+------+-----+---------+----------------+
| Field     | Type    | Null | Key | Default | Extra          |
+-----------+---------+------+-----+---------+----------------+
| oid       | int(11) | NO   | PRI | NULL    | auto_increment |
| orderdate | date    | YES  |     | NULL    |                |
| cid       | int(11) | YES  | MUL | NULL    |                |
| amount    | int(11) | YES  |     | NULL    |                |
+-----------+---------+------+-----+---------+----------------+
4 rows in set (0.072 sec)

MariaDB [sqlthapa]> insert into orders (oid,orderdate,cid,amount) values(1,curdate(),1,23),(2,curdate(),2,43),(3,curdate(),3,900);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`sqlthapa`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customers` (`cid`))
MariaDB [sqlthapa]> insert into customers(cid,cname,email) values(1,'sdf','asdgas'),(2,'fasdg','sdgasg'),(3,'sfsgsd','dsfgdsfhg');
Query OK, 3 rows affected (0.092 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [sqlthapa]> select * from customers;
+-----+--------+-----------+
| cid | cname  | email     |
+-----+--------+-----------+
|   1 | sdf    | asdgas    |
|   2 | fasdg  | sdgasg    |
|   3 | sfsgsd | dsfgdsfhg |
+-----+--------+-----------+
3 rows in set (0.000 sec)

MariaDB [sqlthapa]> insert into orders (oid,orderdate,cid,amount) values(1,curdate(),1,23),(2,curdate(),2,43),(3,curdate(),3,900);
Query OK, 3 rows affected (0.085 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [sqlthapa]> select * from orders;
+-----+------------+------+--------+
| oid | orderdate  | cid  | amount |
+-----+------------+------+--------+
|   1 | 2021-08-03 |    1 |     23 |
|   2 | 2021-08-03 |    2 |     43 |
|   3 | 2021-08-03 |    3 |    900 |
+-----+------------+------+--------+
3 rows in set (0.000 sec)

MariaDB [sqlthapa]>  select * from customers,orders;
+-----+--------+-----------+-----+------------+------+--------+
| cid | cname  | email     | oid | orderdate  | cid  | amount |
+-----+--------+-----------+-----+------------+------+--------+
|   1 | sdf    | asdgas    |   1 | 2021-08-03 |    1 |     23 |
|   2 | fasdg  | sdgasg    |   1 | 2021-08-03 |    1 |     23 |
|   3 | sfsgsd | dsfgdsfhg |   1 | 2021-08-03 |    1 |     23 |
|   1 | sdf    | asdgas    |   2 | 2021-08-03 |    2 |     43 |
|   2 | fasdg  | sdgasg    |   2 | 2021-08-03 |    2 |     43 |
|   3 | sfsgsd | dsfgdsfhg |   2 | 2021-08-03 |    2 |     43 |
|   1 | sdf    | asdgas    |   3 | 2021-08-03 |    3 |    900 |
|   2 | fasdg  | sdgasg    |   3 | 2021-08-03 |    3 |    900 |
|   3 | sfsgsd | dsfgdsfhg |   3 | 2021-08-03 |    3 |    900 |
+-----+--------+-----------+-----+------------+------+--------+
9 rows in set (0.002 sec)

MariaDB [sqlthapa]> select * from customers
    -> join orders
    -> on customers.cid=orders.cid;
+-----+--------+-----------+-----+------------+------+--------+
| cid | cname  | email     | oid | orderdate  | cid  | amount |
+-----+--------+-----------+-----+------------+------+--------+
|   1 | sdf    | asdgas    |   1 | 2021-08-03 |    1 |     23 |
|   2 | fasdg  | sdgasg    |   2 | 2021-08-03 |    2 |     43 |
|   3 | sfsgsd | dsfgdsfhg |   3 | 2021-08-03 |    3 |    900 |
+-----+--------+-----------+-----+------------+------+--------+
3 rows in set (0.001 sec)

MariaDB [sqlthapa]> select cname,orderdate,amount from customers
    -> join orders
    -> on customers.cid=orders.cid;
+--------+------------+--------+
| cname  | orderdate  | amount |
+--------+------------+--------+
| sdf    | 2021-08-03 |     23 |
| fasdg  | 2021-08-03 |     43 |
| sfsgsd | 2021-08-03 |    900 |
+--------+------------+--------+
3 rows in set (0.001 sec)

MariaDB [sqlthapa]> select cname,orderdate,amount,customers.cid from customers
    -> join orders
    -> on customers.cid=orders.cid;
+--------+------------+--------+-----+
| cname  | orderdate  | amount | cid |
+--------+------------+--------+-----+
| sdf    | 2021-08-03 |     23 |   1 |
| fasdg  | 2021-08-03 |     43 |   2 |
| sfsgsd | 2021-08-03 |    900 |   3 |
+--------+------------+--------+-----+
3 rows in set (0.001 sec)

MariaDB [sqlthapa]> insert into customers values('alsdkhf','adhlasdfa@lksdaf.com');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [sqlthapa]> insert into customers(cname,email) values('alsdkhf','adhlasdfa@lksdaf.com');
Query OK, 1 row affected (0.088 sec)

MariaDB [sqlthapa]> select * from customers
    -> inner join
    -> orders
    -> on customers.cid=orders.cid;
+-----+--------+-----------+-----+------------+------+--------+
| cid | cname  | email     | oid | orderdate  | cid  | amount |
+-----+--------+-----------+-----+------------+------+--------+
|   1 | sdf    | asdgas    |   1 | 2021-08-03 |    1 |     23 |
|   2 | fasdg  | sdgasg    |   2 | 2021-08-03 |    2 |     43 |
|   3 | sfsgsd | dsfgdsfhg |   3 | 2021-08-03 |    3 |    900 |
+-----+--------+-----------+-----+------------+------+--------+
3 rows in set (0.001 sec)

MariaDB [sqlthapa]> select * from customers;
+-----+---------+----------------------+
| cid | cname   | email                |
+-----+---------+----------------------+
|   1 | sdf     | asdgas               |
|   2 | fasdg   | sdgasg               |
|   3 | sfsgsd  | dsfgdsfhg            |
|   4 | alsdkhf | adhlasdfa@lksdaf.com |
+-----+---------+----------------------+
4 rows in set (0.000 sec)

MariaDB [sqlthapa]> select * from orders;
+-----+------------+------+--------+
| oid | orderdate  | cid  | amount |
+-----+------------+------+--------+
|   1 | 2021-08-03 |    1 |     23 |
|   2 | 2021-08-03 |    2 |     43 |
|   3 | 2021-08-03 |    3 |    900 |
+-----+------------+------+--------+
3 rows in set (0.000 sec)

MariaDB [sqlthapa]> select * from customers left join ordrs
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [sqlthapa]> select * from customers left join orders
    -> on customers.cid=orders.cid;
+-----+---------+----------------------+------+------------+------+--------+
| cid | cname   | email                | oid  | orderdate  | cid  | amount |
+-----+---------+----------------------+------+------------+------+--------+
|   1 | sdf     | asdgas               |    1 | 2021-08-03 |    1 |     23 |
|   2 | fasdg   | sdgasg               |    2 | 2021-08-03 |    2 |     43 |
|   3 | sfsgsd  | dsfgdsfhg            |    3 | 2021-08-03 |    3 |    900 |
|   4 | alsdkhf | adhlasdfa@lksdaf.com | NULL | NULL       | NULL |   NULL |
+-----+---------+----------------------+------+------------+------+--------+
4 rows in set (0.001 sec)

MariaDB [sqlthapa]> select * from customers right join orders
    -> on customers.cid=orders.cid;
+------+--------+-----------+-----+------------+------+--------+
| cid  | cname  | email     | oid | orderdate  | cid  | amount |
+------+--------+-----------+-----+------------+------+--------+
|    1 | sdf    | asdgas    |   1 | 2021-08-03 |    1 |     23 |
|    2 | fasdg  | sdgasg    |   2 | 2021-08-03 |    2 |     43 |
|    3 | sfsgsd | dsfgdsfhg |   3 | 2021-08-03 |    3 |    900 |
+------+--------+-----------+-----+------------+------+--------+
3 rows in set (0.001 sec)

MariaDB [sqlthapa]>