
# テーブル名
TABLE_TYPES = [
    "chorus_portal_account",
    "discount_exclude",
    "discount_individual",
    "individual_charge",
    "reserved_instance_dynamodb",
    "reserved_instance_ec2",
    "reserved_instance_elasticache",
    "reserved_instance_opensearch",
    "reserved_instance_rds",
    "reserved_instance_redshift",
    "savings_plans"
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
  "338834536339",
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
  "856753954371",
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


def create_sql_with(aws_account_id, table_type, db_name):
    return (
        "account_{0} AS (\n"
        "   SELECT \n"
        "       '{0}' AS title, \n"
        "       count(*) AS {1} \n"
        "   FROM \n"
        "       \"production_a2b_common_aws_aggregate_{2}\".\"{1}\"\n"
        ")".format(aws_account_id, table_type, db_name)
    )
def create_sql_union(aws_account_id, table_type,):
    return "SELECT title, {0} FROM account_{1}\n".format(table_type, aws_account_id)
    

for table_type in TABLE_TYPES:
    sql_with_list = []
    sql_union_list = []

    # shared
    sql_with = create_sql_with(SHARED_PAYER_AWS_ACCOUNT_ID, table_type, 'shared')
    sql_with_list.append(sql_with)

    sql_union = create_sql_union(SHARED_PAYER_AWS_ACCOUNT_ID, table_type)
    sql_union_list.append(sql_union)
    

    # dedicated
    for dedicated_aws_account_id in DEDICATED_AWS_ACCOUNT_IDS:
        sql_with = create_sql_with(dedicated_aws_account_id, table_type, f'dedicated_{dedicated_aws_account_id}')
        sql_with_list.append(sql_with)

        sql_union = create_sql_union(dedicated_aws_account_id, table_type)
        sql_union_list.append(sql_union)
    
    # SQL作成
    sql_with = ',\n'.join(sql_with_list)
    sql_union = 'UNION ALL\n'.join(sql_union_list)

    sql = f'WITH {sql_with}\n{sql_union};'

    file_name = f'./sql/{table_type}.sql'
    with open(file_name, "w") as f:
        f.write(sql)

