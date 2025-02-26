#!/Library/Frameworks/Python.framework/Versions/3.11/bin/python3

import boto3

s3 = boto3.resource('s3')

response = s3.Bucket('jdx7es-ds2002')

for file in response.objects.all():
	print(file.key)
