# Hadoop Exercises

## Prerequisites

- Java 8
- Docker

## Installation

To simplify process of installation hadoop instance we decided to use Docker with hadoop image.

### Steps:
1. Run docker image with command:
    ```json
    docker run --name hadoop_container harisekhon/hadoop
    ```
    This will allow us to run hadoop instance in docker container.
    
    Url to [Dockerfile](https://hub.docker.com/r/harisekhon/hadoop/dockerfile).

2. Open second console and run:
    ```json
    docker exec -it hadoop_container /bin/bash
    ```
    This will allow us to run bash shell on working container with hadoop image.

    Now you can work on hadoop using command-line shell.

### Cheatsheet
- Creating maven fat jar
    ```json
    mvn package
    ```

- Uploading file to docker container:
    ```json
    docker cp from_path to_path
    ```
    For example:
    ```json
    docker cp hadoop.jar hadoop_container:/files_for_hdfs
    ```

- Creating hdfs:
    ```json
    hdfs dfs -mkdir hdfs_in_dir
    ```

- Uploading files to hdfs:
    ```json
    hdfs dfs -copyFromLocal plik_name hdfs_in_dir
    ```

- Running map-reduce:
    ```json
    hadoop jar hadoop.jar className dir_with_input_data dir_to_output_data
    ```
