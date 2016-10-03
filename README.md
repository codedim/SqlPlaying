SQL Quizzes
===========

This repository consists of a few MySQL databases that you may use to 
get some practice in Structured Query Language.

Before you'll be able to start these tests, you must to have **MySQL 
Server v.5.6** installed on your system. If you have not it yet, you can 
use my [WAMP](https://github.com/codedim/WAMP) repo to get the server 
quickly and start the SQL practice with easy (for Windows platforms only).

And the next step to begin, you must to replace your current MySQL 
server data with data from this repo. To do that, firstly stop your 
sql-server:

```
net stop MySQL
```

>**Important note!** Backup your actual Databases (the **mysql\data** 
subdirectory) bofore you continue, if you have them.

Clear your **mysql\data** directory and install this repo into it:

```
git install https://github.com/codedim/SqlPlaying.git
```

Well, you're almost ready now. Start your server back, login to it as 
**root** user and go through the quizzes to have them completed:

```
net start MySQL
mysql\bin\mysql -u root
mysql>show databases;
```

>P.S. Do not forget to return your actual Databases back when you'll 
have finished the Quizzes.


How to work with the Quizzes?
-----------------------------

The every offered Quiz is contained in a separate Database. Those 
databases are named as **test1**, **test2** and so on.

In every such database you can find a table named **answers**, that 
consists possible answers (SQL queries) together with its corresponding 
IDs. If you wish to compare your answer with my one, just type:

```
SELECT answer FROM answers WHERE id = <NumberOfQuestion>;
```

**Good Luck!**


Test#1. Making a database.
--------------------------

In this section we will create a database and a table, fill in the 
table with some information, and even transfer the table into a 
different database.

### Task#1:
If the database named **TEST1** excists, delete it. Make the new **TEST1** 
database.
#### Resul:
```
Query OK, 1 row affected (0.00 sec)
```

### Task#2:
Switch into the database and make the table named **COMPUTERS** which must 
consist of three integer (numeric) columns: **CPU**, **MEMORY**, **HDD**. 
Then show the new table in the **TEST1** database.
#### Resul:
```
+-----------------+
| Tables_in_test1 |
+-----------------+
| computers       |
+-----------------+
```

### Task#3:
Show the **COMPUTERS** table column's domains (data types).
#### Resul:
```
+--------+--------+------+-----+---------+-------+
| Field  | Type   | Null | Key | Default | Extra |
+--------+--------+------+-----+---------+-------+
| cpu    | int(8) | YES  |     | NULL    |       |
| memory | int(8) | YES  |     | NULL    |       |
| hdd    | int(8) | YES  |     | NULL    |       |
+--------+--------+------+-----+---------+-------+
```

### Task#4:
Add four rows to the **COMPUTERS** table with the following 
information:
#### Resul:
```
+------+--------+------+
| cpu  | memory | hdd  |
+------+--------+------+
| 1600 |   2000 |  500 |
| 2400 |   3000 |  800 |
| 3200 |   3000 | 1200 |
| 2400 |   2000 | 5000 |
+------+--------+------+
```

### Task#5:
Change the **HDD** value of the last row to 500 (GB).
#### Resul:
```
+------+--------+------+
| cpu  | memory | hdd  |
+------+--------+------+
| 1600 |   2000 |  500 |
| 2400 |   3000 |  800 |
| 3200 |   3000 | 1200 |
| 2400 |   2000 |  500 |
+------+--------+------+
```

### Task#6:
Transfer the **COMPUTERS** table as **PC** table into the **TEST2** databese.

>Tip: Use fully-specified table names in **RENAME** clouse. In the same way 
you can rename entire databases as well.

Demonstrate the **TEST1** database is empty now.
#### Resul:
```
Empty set (0.00 sec)
```


Test#2. Simple queries.
-----------------------

The most commonly used queries in SQL are **SELECT** queries. This type of 
queries is used to retrieve varios information from databases. So, let's 
make some simple **SELECT** queries from the **PC** table.

### Task#1:
Output **CPU** and **HDD** values of **PC**s which memory value is equal to 
3000 (MB).
#### Resul:
```
+------+------+
| cpu  | hdd  |
+------+------+
| 2400 |  800 |
| 3200 | 1200 |
+------+------+
```

### Task#2:
Output minimal **HDD** value named as **MIN_HDD**.
#### Resul:
```
+---------+
| min_hdd |
+---------+
|     500 |
+---------+
```

### Task#3:
Output **COUNT** and **HDD** values where **COUNT** is amount of **PC**s 
which have the minimal **HDD** value.
#### Resul:
```
+-------+------+
| count | hdd  |
+-------+------+
|     2 |  500 |
+-------+------+
```


Test#3. The special cases.
--------------------------

In this chapter we'll consider some special queries to a SQL DBMS. Before 
you start the tasks below you should know about the special table named 
**DUAL**.

### Task#1:
Calculate the value of the following expression: **3 + 2 * 4**.
#### Resul:
```
+-----------+
| 3 + 2 * 4 |
+-----------+
|        11 |
+-----------+
```

### Task#2:
Make a new table **LOGON** by using **SELECT** query only. The table must 
consist of two columns (**USER** and **SYSDATE**) and have only one row with 
current user and date-time information.
#### Resul:
```
+----------------+---------------------+
| user           | sysdate             |
+----------------+---------------------+
| root@localhost | 2016-09-30 13:38:25 |
+----------------+---------------------+
```

### Task#3:
Add to the **LOGON** table a column named **ID** to consist **not-null**, 
**auto-incremented** and **primary-key** values.
#### Resul:
```
+----------------+---------------------+----+
| user           | sysdate             | id |
+----------------+---------------------+----+
| root@localhost | 2016-09-30 13:38:25 |  1 |
+----------------+---------------------+----+
```

### Task#4:
Print the information about the table **LOGON** column data types.
#### Resul:
```
+---------+-------------+------+-----+---------------------+----------------+
| Field   | Type        | Null | Key | Default             | Extra          |
+---------+-------------+------+-----+---------------------+----------------+
| user    | varchar(77) | YES  |     | NULL                |                |
| sysdate | datetime    | NO   |     | 0000-00-00 00:00:00 |                |
| id      | int(3)      | NO   | PRI | NULL                | auto_increment |
+---------+-------------+------+-----+---------------------+----------------+
```

### Task#5:
Add to the **LOGON** table a new row with the current user and date-time 
values.
#### Resul:
```
+----------------+---------------------+----+
| user           | sysdate             | id |
+----------------+---------------------+----+
| root@localhost | 2016-09-30 13:38:25 |  1 |
| root@localhost | 2016-09-30 14:36:40 |  2 |
+----------------+---------------------+----+
```







### Task#:

#### Resul:
```

```

