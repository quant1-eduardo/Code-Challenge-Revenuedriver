#!/bin/bash
cd python-server && curl -X POST -F file=@code_challenge.csv http://localhost:5000/saveData && curl -X POST http://localhost:5000/readData
curl -X POST http://localhost:5000/readData
cd .. && docker exec revenuedriver-db sh -c 'exec mysqldump  -u root -p"fdkafj4314O" revenuedb travel' > ./dump-databases.sql