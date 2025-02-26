#!/Library/Frameworks/Python.framework/Versions/3.11/bin/python3

import boto3

s3 = boto3.client('s3')

BUCKET ='jdx7es-ds2002'
OBJ_NAME = 'puppies.jpeg'
FILE_NAME = 'BOTO3_DOWNLOADED.jpg'

response = s3.download_file(BUCKET, OBJ_NAME, FILE_NAME)
