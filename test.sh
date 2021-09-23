#!/bin/bash
cd python-server && curl -X POST -F file=@code_challenge.csv http://localhost:5000/saveData && curl -X POST http://localhost:5000/readData
curl -X POST http://localhost:5000/readData