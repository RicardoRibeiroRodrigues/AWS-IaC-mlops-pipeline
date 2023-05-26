import boto3

region = input("Enter the region name (ex: us-east-1): ")
client = boto3.client('sagemaker', region_name=region)

active_endpoints = client.list_endpoints()["Endpoints"]

for endpoint in active_endpoints:
    print(endpoint["EndpointName"])
    user_input = input("Do you want to delete this endpoint? (y/n): ")

    if user_input == 'y':
        user_input = input(f"Are you sure you want to delete the endpoint {endpoint['EndpointName']}? (y/n): ")
        if user_input == 'y':
            try:
                res = client.delete_endpoint(EndpointName=endpoint["EndpointName"])
                print(res)
                print("Endpoint deleted successfully")
            except Exception as e:
                print(e)
                print("Endpoint not deleted")
    else:
        print("Endpoint not deleted")