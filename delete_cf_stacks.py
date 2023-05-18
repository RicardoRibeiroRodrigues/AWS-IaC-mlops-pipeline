import boto3

region = 'us-east-1'
client = boto3.client('cloudformation', region_name=region)

stacks = client.list_stacks()

for stack in stacks['StackSummaries']:
    user_input = input("Delete stack " + stack['StackName'] + "? (y/n): ")
    if user_input == 'y':
        client.delete_stack(StackName=stack['StackName'])
        print("Deleting stack " + stack['StackName'])
    else:
        print("Skipping stack " + stack['StackName'])