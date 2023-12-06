# sales-database

SQL files and commands to create a sales database, table, insert data and run queries to analyse sales data.

## Create the database and table

Run the create database and table sql file.

```
mysql < create_database_and_table.sql
```

## Insert data

```
mysql < insert_data.sql
```

## Run queries to analyse sales data

```
mysql < queries_analyse_sales_data.sql
```

## MySQL Guidance

Details on how to install mysql and authenticate (if needed).

### Install MySQL

MySQL can be installed via brew

```
brew install mysql
brew services start mysql
```

### Username / Password authentication

If mysql has authenticaton enabled, you can include your password in the command line.

```
mysql -p < create_database_and_table.sql
```
