

crawlers=(
    "daikinemoto_a2b_common_cur_shared"
    "daikinemoto_a2b_common_cur_dedicated_014229765626"
    "daikinemoto_a2b_common_shared_chorus_portal"
    "daikinemoto_a2b_common_dedicated_chorus_portal_014229765626"
    "daikinemoto_a2b_common_mapping_table_ri"
    "daikinemoto_a2b_common_mapping_table_sp"
    # "daikinemoto_a2b_common_aws_aggregate_intermediate_only_individual_charged"
)

# crawler
for item in "${crawlers[@]}" ; do
    echo `start: ${item}`
    aws --profile private-a2b-admin glue start-crawler --name ${item}
done

# 確認: https://ap-northeast-1.console.aws.amazon.com/glue/home?region=ap-northeast-1#/v2/data-catalog/crawlers