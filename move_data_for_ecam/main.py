import boto3
import re

# バケット名
bucket_name_cp = 'daikinemoto-a2b-local-chorus-portal-master-data'
bucket_name_mapping = 'daikinemoto-a2b-local-generate-mapping-tables'

# テーブル名
TABLE_TYPES = [
    "chorus_portal_account",
    "discount_exclude",
    "discount_individual",
    "individual_charge",
    "reserved_instance-dynamodb",
    "reserved_instance-ec2",
    "reserved_instance-elasticache",
    "reserved_instance-opensearch",
    "reserved_instance-rds",
    "reserved_instance-redshift",
    "savings_plans"
]

TABLE_TYPE_MAPPING = [
    "Reserved",
    "savingsPlan"
]


# Dedicatedアカウント
SHARED_PAYER_AWS_ACCOUNT_ID = "434519024304"
DEDICATED_AWS_ACCOUNT_IDS = [
  "014229765626",
  "014730125768",
  "015166320012",
  "023280770555",
  "034783791145",
  "073858585757",
  "127466939911",
  "189585356497",
  "226060598830",
  "247364657386",
  "291957535319",
  "341267347886",
  "346402807177",
  "366519242445",
  "394759194433",
  "430092958156",
  "460564462217",
  "507776553901",
  "514831055183",
  "552721663264",
  "582087840222",
  "634487139226",
  "638346777360",
  "672604971719",
  "727023716560",
  "862340440120",
  "863071450033",
  "875144205584",
  "884103735193",
  "897706971707",
  "918821427740",
  "955737177772",
  "963065819957",
  "969325077577",
  "999564223101" 
]

###########
### 処理 ###
###########


# 準備
session = boto3.Session(profile_name='private-a2b-admin')
client = session.client("s3")

# 検証用。対象のS3パスを確認する
def dry_run(prefix,bucket_name, table_type, payer_aws_account_id):
    paginator = client.get_paginator('list_objects_v2')
    pages = paginator.paginate(Bucket=bucket_name,Prefix=prefix)
    for page in pages:
        result = ""
        if 'Contents' in page:
            for obj in page['Contents']:
                m = re.search(r'\/year=.*parquet', obj["Key"])
                if m is not None:
                    copy_from_path = obj["Key"]
                    copy_to_path = f'{table_type}/payer_aws_account_id={payer_aws_account_id}{m.group()}'
                    result += f'bucket: {bucket_name} from: {copy_from_path} to: {copy_to_path}\n'
        with open("sample.txt", "a") as f:
            f.write(result)
                    

# コピー処理実行用
def copy(prefix,bucket_name, table_type, payer_aws_account_id):
    paginator = client.get_paginator('list_objects_v2')
    pages = paginator.paginate(Bucket=bucket_name,Prefix=prefix)
    for page in pages:
        if 'Contents' in page:
            for obj in page['Contents']:
                m = re.search(r'\/year=.*parquet', obj["Key"])
                if m is not None:
                    copy_from_path = obj["Key"]
                    copy_to_path = f'{table_type}/payer_aws_account_id={payer_aws_account_id}{m.group()}'
                    print(f'from: {copy_from_path}\nto: {copy_to_path}\n')
                    client.copy_object(Bucket=bucket_name, Key=copy_to_path, CopySource={'Bucket': bucket_name, 'Key': copy_from_path})

# Shared
for table_type in TABLE_TYPES:
    prefix = f'shared/{table_type}/'
    print(prefix)
    copy(prefix, bucket_name_cp, table_type, SHARED_PAYER_AWS_ACCOUNT_ID)
    # dry_run(prefix, bucket_name_cp, table_type, SHARED_PAYER_AWS_ACCOUNT_ID)
    
        
# Dedicated
for aws_account_id in DEDICATED_AWS_ACCOUNT_IDS:
    for table_type in TABLE_TYPES:
        prefix = f'dedicated/{aws_account_id}/{table_type}/'
        print(prefix)
        copy(prefix, bucket_name_cp, table_type, aws_account_id)
        # dry_run(prefix, bucket_name_cp, table_type, aws_account_id)

# MappingData RI
prefix = f'pricing_type=Reserved/'
print(prefix)
copy(prefix, bucket_name_mapping, "reserved", SHARED_PAYER_AWS_ACCOUNT_ID)
# dry_run(prefix, bucket_name_mapping, "reserved", SHARED_PAYER_AWS_ACCOUNT_ID)
   
# MappingData SP
prefix = f'pricing_type=savingsPlan/'
print(prefix)
copy(prefix, bucket_name_mapping, "savings_plan", SHARED_PAYER_AWS_ACCOUNT_ID)
# dry_run(prefix, bucket_name_mapping, "savings_plan", SHARED_PAYER_AWS_ACCOUNT_ID)