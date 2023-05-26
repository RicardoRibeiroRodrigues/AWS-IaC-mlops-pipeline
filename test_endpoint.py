import pandas as pd
import sagemaker
import boto3
from sagemaker import get_execution_role


test_data=pd.read_csv('test.csv', header=None)
testdata1 = test_data.iloc[0:1,1:]
print(testdata1)

region = input("Enter the region name (ex: us-east-1): ")
runtime = boto3.client("sagemaker-runtime", region_name=region)
# endpoint_name="aws-sagemaker-terraform-cicd-staging-0306" # update to your own endpoint name
# endpoint_name="aws-sagemaker-terraform-cicd-prod-0306"
endpoint_name = input("Enter the endpoint name: ")

prediction = runtime.invoke_endpoint(
    EndpointName=endpoint_name,
    Body=testdata1.to_csv(header=False, index=False).encode("utf-8"),
    ContentType="text/csv",
    Accept= "text/csv",
)

print(prediction["Body"].read())