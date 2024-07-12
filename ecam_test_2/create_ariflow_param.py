import pandas as pd

MONTH="04"
# MONTH="05"

SHARED_PAYER_AWS_ACCOUNT_ID="434519024304"
ECAM_PAYER_AWS_ACCOUNT_ID="127466939911"

df = pd.read_csv(f'./data/{MONTH}/metadata_fix.csv', header=0, names=["assembly_id", "payer_aws_account_id"], dtype={ "assembly_id": "string", "payer_aws_account_id": "string"})

result_list = []
for index, row in df.iterrows():
    assembly_id = row["assembly_id"]
    payer_aws_account_id = row["payer_aws_account_id"]

    text = (
        "{{\n"
        "   \"assembly_id\": \"{0}\",\n"
        "   \"payer_aws_account_id\": \"{1}\"\n"
        "}}".format(assembly_id, payer_aws_account_id)
    )
    result_list.append(text)


result = ",\n".join(result_list)
print(result)

