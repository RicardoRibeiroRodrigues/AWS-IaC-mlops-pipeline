import boto3

region = input("Enter the region name (ex: us-east-1): ")
client = boto3.client('s3', region_name=region)

# List all buckets
response = client.list_buckets()
for bucket in response['Buckets']:
    print(bucket['Name'])
    user_input = input("Do you want to delete this bucket? (y/n): ")
    if user_input == 'y':
        try:
            res = client.delete_bucket(Bucket=bucket['Name'])
            print(res)
            print("Bucket deleted successfully")
        except Exception as e:
            print(e)
            print("Bucket not deleted")
    else:
        print("Bucket not deleted")