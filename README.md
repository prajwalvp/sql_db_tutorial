# sql_db_tutorial

This is a walk through of instructions and recommendations for playing around with SQL.

What is required? - Docker installed.

After cloning this repository, run these commands

1. docker build -t tutorial . (Do this after entering the cloned directory)

This builds an image with an already made schema (See the Dockerfile for how this is done!)

2. docker run --name tutorial_sql -e MYSQL_ROOT_PASSWORD=abc -d tutorial:latest (Creates a container where sql is served)

Now there are 2 ways you can connect to this.

a) 
- Use the python snippet tutorial_db_handler.py

Before that...

You need to have the MySQLdb python library installed. Check out this link for the relevant OS
  
https://stackoverflow.com/questions/25865270/how-to-install-python-mysqldb-module-using-pip

- run a docker inspect <container_name> to get the ip and put this in the code

Now you can update,create,query the db

b) 
docker exec -it tutorial_sql mysql -uroot -p


Although I recommend using a nice GUI for DB management in general.

- DBeaver or phpmyadmin on Linux

- Sequel Pro for Mac
