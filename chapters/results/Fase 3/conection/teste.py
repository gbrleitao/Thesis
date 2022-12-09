import pymongo
from pymongo import MongoClient

client = MongoClient('mongodb+srv://user:1234567890@lucasprojects.2geja.mongodb.net/test?authSource=admin&replicaSet=atlas-6gckwv-shard-0&readPreference=primary&ssl=true')

db = client.OFVA
collection = db['log_20211213'] 
cursor = collection.find({'id_estudante':14,'id_questionario':3,'id_questao':'27'})

for document in cursor:
    print(document)