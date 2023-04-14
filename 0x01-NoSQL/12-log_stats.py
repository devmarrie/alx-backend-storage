#!/usr/bin/bash python3
"""provides some stats about Nginx logs stored in MongoDB
"""
import pymongo
from pymongo import MongoClient

client = MongoClient("mongodb://127.0.0.1:27017")
db = client.logs
collection = db.nginx
methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
total = collection.count()
print(f'{total} logs')

for method in methods:
   count = {method: collection.count_documents({"method":method})}

for m,c in count.items():
   print(f"\t{count}\t{method}")

# Count status path
num_status_path = collection.count_documents({'method': 'GET', 'path': PATH_STATUS})
print(f"{num_status_path} logs with method=GET and path={PATH_STATUS}")

# Count other paths
for path in PATHS:
    num_path = collection.count_documents({'path': path})
    print(f"{num_path} logs with path={path}")


