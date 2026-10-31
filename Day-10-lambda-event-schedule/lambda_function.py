import json
from datetime import datetime

def lambda_handler(event, context):
    print("Hello! Lambda executed successfully.")
    print("Execution time:", datetime.now())

    return {
        "statusCode": 200,
        "body": json.dumps("Lambda executed successfully!")
    }