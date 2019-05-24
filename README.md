# sql_db_tutorial

This is a walk through of instructions and recommendations for playing around with SQL.

What is required? - Docker installed.

After cloning this repository, run these commands

1. docker build -t tutorial . (Do this after entering the cloned directory)

This builds an image with an already made schema (See the Dockerfile for how this is done!)

2. docker run --name tutorial_sql -e MYSQL_ROOT_PASSWORD=abc -d tutorial:latest (Creates a container where sql is served)

Now there are 2 ways you can connect to this.

a) Use the python snippet tutorial_db_handler.py

But Before that...

You need to have the MySQLdb python library installed. Check out this link for the relevant OS
  
https://stackoverflow.com/questions/25865270/how-to-install-python-mysqldb-module-using-pip

- run a docker inspect <container_name> to get the ip and put this in the python code (Edit lines 125 to 128 in tutorial_db_handler.py accordingly)

Now you can update,create,query the db.The tutorial_fill_db document has some functions and commands to play around with  

b) 
docker exec -it tutorial_sql mysql -uroot -p
Enter password on prompt which is 'abc' 

#Strongly recommend using a nice GUI for DB management in general.

- DBeaver or phpmyadmin on Linux. DBeaver can be installed by RZ on local Desktops. phpmyadmin works for good for own laptops.

phpmyadmin install: https://www.hostingadvice.com/how-to/install-phpmyadmin-on-ubuntu/
You mostly will encounter errors after following above link. This will help
https://askubuntu.com/questions/55280/phpmyadmin-is-not-working-after-i-installed-it

- Sequel Pro for Mac
https://www.sequelpro.com/


Some useful website links:

Tutorials and concepts
https://www.w3schools.com/sql/default.asp
https://docs.microsoft.com/en-us/azure/architecture/data-guide/relational-data/

Python library for MySQL
https://mysqlclient.readthedocs.io/index.html 

Pivot tables
https://blogs.msdn.microsoft.com/spike/2009/03/03/pivot-tables-in-sql-server-a-simple-sample/ (Something important I missed out in the tutorial)

Database Diagrams
https://app.quickdatabasediagrams.com/#/d/q3gCZ3 (To create easy Database schema visualisations)
