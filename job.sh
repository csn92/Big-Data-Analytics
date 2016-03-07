#!/bin/bash

echo "Starting to Crawl"
python main/get_rss.py
echo "Finished Crawling"

echo "Starting Compiling"
cd main; mvn compile ; mvn exec:java -Dexec.mainClass=finalproject.main.App
echo "Finished Compiling"

# echo "Running"
# cd main; mvn exec:java -Dexec.mainClass=finalproject.main.App
echo "Finished"

cd - 
cd web && npm start