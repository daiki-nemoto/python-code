# https://ap-northeast-1.console.aws.amazon.com/systems-manager/parameters/%252Fproduction-a2b-common%252Fmwaa%252Fairflow%252Fdedicated-payer-aws-account-ids/description?region=ap-northeast-1&tab=Table#list_parameter_filters=Name:Contains:dedicated

account_string = "014229765626,014730125768,015166320012,023280770555,034783791145,073858585757,127466939911,189585356497,226060598830,247364657386,291957535319,338834536339,341267347886,346402807177,366519242445,394759194433,430092958156,460564462217,507776553901,514831055183,552721663264,582087840222,634487139226,638346777360,672604971719,727023716560,856753954371,862340440120,863071450033,875144205584,884103735193,897706971707,918821427740,955737177772,963065819957,969325077577,999564223101"

dedicated_aws_account_list = account_string.split(',')

print(dedicated_aws_account_list)

account_list = []
for aws_account_id in dedicated_aws_account_list:
    account_list.append(f"  \"{aws_account_id}\"")


account_list_joined = ",\n".join(account_list)

print(account_list_joined)


python_list = f"DEDICATED_AWS_ACCOUNT_IDS = [\n{account_list_joined} \n]"

print(python_list)
