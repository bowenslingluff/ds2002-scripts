#!/Library/Frameworks/Python.framework/Versions/3.11/bin/python3

import boto3

s3 = boto.client('s3')

def upload_file(file_name, bucket, object_name):
	response = s3.upload_file(file_name, bucket, object_name)
	print(response)
	return True

upload_file()
