import pandas as pd


DEST_PREFIX="ecam01-a2b-common"
# MONTH="05"
# YYYYMMDD_YYYMMDD="20240501-20240601"
MONTH="06"
YYYYMMDD_YYYMMDD="20240601-20240701"

df = pd.read_csv(f'./data/{MONTH}/metadata_fix.csv', header=0, names=["assembly_id", "payer_aws_account_id"], dtype={ "assembly_id": "string", "payer_aws_account_id": "string"})

result = ""
for index, row in df.iterrows():
    code = ""

    payer_aws_account_id = row["payer_aws_account_id"]
    assembly_id = row["assembly_id"]

    if payer_aws_account_id == "434519024304":
        code = f'aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-cur/shared/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/ s3://{DEST_PREFIX}-cur/shared/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/'
    elif payer_aws_account_id == "127466939911":
        code = f'aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-cur/dedicated/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/ s3://{DEST_PREFIX}-cur-{payer_aws_account_id}/shared/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/'
    else:
        code = f'aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-cur/dedicated/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/ s3://{DEST_PREFIX}-cur/dedicated/{payer_aws_account_id}/cur-origin/{YYYYMMDD_YYYMMDD}/{assembly_id}/'
    
    print(payer_aws_account_id)
    print(code)
    print("====")

    result += f'{code}\n'


with open(f"./output/{MONTH}/move_cur.sh", "w") as f:
    f.write(result)