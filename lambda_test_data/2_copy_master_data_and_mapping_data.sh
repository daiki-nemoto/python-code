
## 特定の月のmaster_data,mapping_tableをprivateに持ってくる

items=(
    "chorus_portal_account"
    "discount_exclude"
    "discount_individual"
    "individual_charge"
    "reserved_instance-dynamodb"
    "reserved_instance-ec2"
    "reserved_instance-elasticache"
    "reserved_instance-opensearch"
    "reserved_instance-rds"
    "reserved_instance-redshift"
    "savings_plans"
)
mapping_items=(
    "Reserved"
    "savingsPlan"
)

year="2024"
month="03"

# CURをコピーする

# shared master_data
echo '--- shared ---'
for item in "${items[@]}" ; do
    aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-chorus-portal-master-data/shared/${item}/year=${year}/month=${month}/ s3://daikinemoto-a2b-common-chorus-portal-master-data/shared/${item}/year=${year}/month=${month}/
done

# shared mapping_table
echo '--- shared mapping table ---'
for item in "${mapping_items[@]}" ; do
    aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-generate-mapping-tables/pricing_type=${item}/year=${year}/month=${month}/ s3://daikinemoto-a2b-common-generate-mapping-tables/pricing_type=${item}/year=${year}/month=${month}/
done


dedicated=014229765626
# dedicated master_data
echo '--- dedicated ---'
for item in "${items[@]}" ; do
    aws --profile private-a2b-admin s3 sync --delete --exact-timestamps s3://production-a2b-common-chorus-portal-master-data/dedicated/${dedicated}/${item}/year=${year}/month=${month}/ s3://daikinemoto-a2b-common-chorus-portal-master-data/dedicated/${dedicated}/${item}/year=${year}/month=${month}/
done

