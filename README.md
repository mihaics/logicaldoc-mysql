# logicaldoc-mysql
Logicaldoc ( http://www.logicaldoc.com ) Docker image with mysql server

How to run:
open a console and execute

$docker run -p 8080:8080 mcsaky/logicaldoc-mysql

or

$sudo docker run -p 8080:8080 mcsaky/logicaldoc-mysql

(depending on your settings)

another good way to start the application would be docker-compose, here is a sample file:

'''
version: '2'
services:
 logicaldoc: 
  container_name: logicaldoc  
  image: mcsaky/logicaldoc-mysql
  ports:
   - 8080:8080
'''

after the image is started for the first time, you will be able to connect with a browser
at http://localhost:8080 and login with username: admin, password: admin
