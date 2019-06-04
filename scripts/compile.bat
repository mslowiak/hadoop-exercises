cd ..\hadoop-example
mvn package && docker cp target\hadoop.jar hadoop_container:/files/
