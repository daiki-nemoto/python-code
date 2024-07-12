import pandas as pd
import re

DEST_PREFIX="ecam01-a2b-common"
YYYY="2024"
# MM="05"
MM="06" 


df = pd.read_csv(f'./data/{MM}/metadata_cpdata.csv', header=0, names=["payer_aws_account_id", "table_name", "create_date"], dtype={ "payer_aws_account_id": "string", "table_name": "string", "create_date": "string"})


result = ""
for index, row in df.iterrows():
    code = ""

    payer_aws_account_id = row["payer_aws_account_id"]
    table_name = row["table_name"]
    create_date = row["create_date"]

    # table_name修正
    m = re.search(r'^reserved_instance_.*', table_name)
    if m:
        print(m.group())
        s = table_name.split('_')
        table_name = f'reserved_instance-{s[2]}'


    if payer_aws_account_id == "434519024304":
        code = f'aws --profile private-a2b-admin s3 sync --delete --exact-timestamps "s3://production-a2b-common-chorus-portal-master-data/shared/{table_name}/year={YYYY}/month={MM}/create_date={create_date}/" "s3://{DEST_PREFIX}-chorus-portal-master-data/{table_name}/payer_aws_account_id={payer_aws_account_id}/year={YYYY}/month={MM}/create_date={create_date}/"'
    else:
        code = f'aws --profile private-a2b-admin s3 sync --delete --exact-timestamps "s3://production-a2b-common-chorus-portal-master-data/dedicated/{payer_aws_account_id}/{table_name}/year={YYYY}/month={MM}/create_date={create_date}/" "s3://{DEST_PREFIX}-chorus-portal-master-data/{table_name}/payer_aws_account_id={payer_aws_account_id}/year={YYYY}/month={MM}/create_date={create_date}/"'
    
    print(payer_aws_account_id)
    print(code)
    print("====")

    result += f'{code}\n'


with open(f"./output/{MM}/move_cpdata.sh", "w") as f:
    f.write(result)