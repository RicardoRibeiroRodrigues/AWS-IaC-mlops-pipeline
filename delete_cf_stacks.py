import boto3

region = 'us-east-1'
client = boto3.client('cloudformation', region_name=region)

stacks = client.list_stacks()
# Only unique stacks
stacks = { each['StackName'] : each for each in stacks['StackSummaries'] }


for stack in stacks:
    user_input = input("Delete stack " + stack + "? (y/n): ")
    if user_input == 'y':
        client.delete_stack(StackName=stack)
        print("Deleting stack " + stack)
    else:
        print("Skipping stack " + stack)