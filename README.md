# Code Challenge Revenuedriver
This my Code Challenge solution for Revenue Driver backend developer job

## Instalation

This code solution depends on [Docker](https://docker.com)

Please run the solution with the following commands 
```docker-compose buil```
&&
```ddocker-compose up```

## Usage

* Then run ```sh test.sh``` in another console tab
* The code_challenge.csv file will be uploaded to python-server through saveData route.
* So the readData route will read all of the lines from travel table.
* The results can be checked on docker-compose logs tab

## Architeture
The container revenuedriver-db has the MySQL database
And the container revenuedriver-python has the python server application
