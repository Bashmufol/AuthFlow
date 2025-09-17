#!/bin/sh
echo "Waiting for MySQL to be available..."
until nc -z -v -w30 mysql 3306
do
  echo "Waiting for MySQL..."
  sleep 2
done
echo "MySQL is up – starting app"
exec java -jar student-app.jar
