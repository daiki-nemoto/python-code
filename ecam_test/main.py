import pandas as pd

DEST_PREFIX="ecam-a2b-common"
YYYYMMDD_YYYMMDD="20240601-20240701"

df = pd.read_csv('target.csv', header=0, names=["assembly_id", "payer_aws_account_id"], dtype={ "assembly_id": "string", "payer_aws_account_id": "string"})

result = ""
for index, row in df.iterrows():
    code = ""

    payer_aws_account_id = row["payer_aws_account_id"]
    assembly_id = row["assembly_id"]

    if payer_aws_account_id == "434519024304":
        code = f'aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-cur/shared/434519024304/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/ s3://{DEST_PREFIX}-cur/shared/434519024304/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/'
    else:
        code = f'aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-cur/dedicated/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/ s3://{DEST_PREFIX}-cur/dedicated/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/'
    
    print(payer_aws_account_id)
    print(code)
    print("====")

    result += f'{code}\n'


with open("sample.sh", "w") as f:
    f.write(result)