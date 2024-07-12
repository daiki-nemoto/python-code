#
- 5,6月のShared(4345...)を手動実行する
- price_list
    - 本番のデータをecam環境に移動させる
    - price_listのパラメータの指定はしない
- CP連携データ
    - 本番から持ってくる
- CUR 
    - 5月確定分
    - 6月最新分
    - 6月確定分 (追加)

# 5月

## CUR 確定
アセンブリID = 20240602T235638Z
execution_date = '2024-06-04 06:15:54'
```
SELECT 
    assembly_id, 
    payer_aws_account_id 
FROM 
    "production_a2b_common_metadata"."metadata_cur" 
WHERE 
    year = '2024'
AND 
    month = '05'
AND 
    is_fixed = true
AND 
    payer_aws_account_id = '434519024304'
limit 50;
```

## CP Data 確認
```
SELECT 
    payer_aws_account_id,
    table_name,
    create_date
FROM 
    "production_a2b_common_metadata"."metadata_master_data" 
WHERE 
    year = '2024'
AND 
    month = '05'
AND 
    execution_date = '2024-06-04 06:15:54'
AND 
    payer_aws_account_id = '434519024304'
AND 
    table_name != 'pricing_type_reserved'
AND
    table_name != 'pricing_type_savingsplan'
AND
    table_name != 'pricing_type_reserved_split'
AND 
    create_date != ''
ORDER BY 
    payer_aws_account_id
limit 10000;
```


---
# 6月
アセンブリID = 20240701T172624Z
execution_date = 2024-07-02 06:15:48

## CUR 最新
確認
```
SELECT 
    execution_date, assembly_id
FROM 
    "production_a2b_common_metadata"."metadata_cur" 
WHERE 
    year = '2024'
AND 
    month = '06'
AND 
    payer_aws_account_id = '434519024304'
AND 
    is_succeeded = true
limit 100;
```



## CP Data 確認
```
SELECT 
    payer_aws_account_id,
    table_name,
    create_date
FROM 
    "production_a2b_common_metadata"."metadata_master_data" 
WHERE 
    year = '2024'
AND 
    month = '06'
AND 
    execution_date = '2024-07-02 06:15:48'
AND 
    payer_aws_account_id = '434519024304'
AND 
    table_name != 'pricing_type_reserved'
AND
    table_name != 'pricing_type_savingsplan'
AND
    table_name != 'pricing_type_reserved_split'
AND 
    create_date != ''
ORDER BY 
    payer_aws_account_id
limit 10000;
```


---

# 6月確定
アセンブリID = 20240707T005636Z
execution_date = 2024-07-08 06:16:12


```
SELECT 
    assembly_id, 
    payer_aws_account_id 
FROM 
    "production_a2b_common_metadata"."metadata_cur" 
WHERE 
    year = '2024'
AND 
    month = '06'
AND 
    is_fixed = true
limit 50;
```

## CP Data 確認
```
SELECT 
    payer_aws_account_id,
    table_name,
    create_date
FROM 
    "production_a2b_common_metadata"."metadata_master_data" 
WHERE 
    year = '2024'
AND 
    month = '06'
AND 
    execution_date = '2024-07-08 06:16:12'
AND 
    table_name != 'pricing_type_reserved'
AND
    table_name != 'pricing_type_savingsplan'
AND
    table_name != 'pricing_type_reserved_split'
AND 
    create_date != ''
ORDER BY 
    payer_aws_account_id
limit 10000;
```



# Price List

```
aws --profile private-a2b-admin s3 sync --delete --exact-timestamp "s3://production-a2b-common-download-aws-price-lists/" "s3://ecam01-a2b-common-download-aws-price-lists/"
```


# Airflow parameter

## mapping table
5月
```
{
    "year": "2024",
    "month": "05",
    "assembly_id": "20240602T235638Z",
    "payer_aws_account_id": "434519024304",
    "pricing_types": "Reserved,savingsPlan",
    "ec2_od_price_lists_uri": "",
    "ec2_ri_price_lists_uri": "",
    "ec2_sp_price_lists_uri": "",
    "lambda_od_price_lists_uri": "",
    "lambda_sp_price_lists_uri": "",
    "ecs_od_price_lists_uri": "",
    "ecs_sp_price_lists_uri": "",
    "sagemaker_od_price_lists_uri": "",
    "sagemaker_sp_price_lists_uri": "",
    "eks_od_price_lists_uri": "",
    "eks_sp_price_lists_uri": "",
    "ec2_ri_cp_data_uri": "",
    "sp_cp_data_uri": ""
}
```

6月
```
{
    "year": "2024",
    "month": "06",
    "assembly_id": "20240701T172624Z",
    "payer_aws_account_id": "434519024304",
    "pricing_types": "Reserved,savingsPlan",
    "ec2_od_price_lists_uri": "",
    "ec2_ri_price_lists_uri": "",
    "ec2_sp_price_lists_uri": "",
    "lambda_od_price_lists_uri": "",
    "lambda_sp_price_lists_uri": "",
    "ecs_od_price_lists_uri": "",
    "ecs_sp_price_lists_uri": "",
    "sagemaker_od_price_lists_uri": "",
    "sagemaker_sp_price_lists_uri": "",
    "eks_od_price_lists_uri": "",
    "eks_sp_price_lists_uri": "",
    "ec2_ri_cp_data_uri": "",
    "sp_cp_data_uri": ""
}
```

## 本処理
5月
```
{
    "year" : "2024",
    "month" : "05",
    "assembly_id" : "20240602T235638Z",
    "payer_aws_account_id" : "434519024304",
    "metadata_usage_type": "latest"
}
```

6月
```
{
    "year" : "2024",
    "month" : "06",
    "assembly_id" : "20240701T172624Z",
    "payer_aws_account_id" : "434519024304",
    "metadata_usage_type": "latest"
}
```



## 追加分
6月確定分
```
{
    "year": "2024",
    "month": "06",
    "assembly_id": "20240702T125637Z",
    "payer_aws_account_id": "127466939911",
    "pricing_types": "Reserved,savingsPlan",
    "ec2_od_price_lists_uri": "",
    "ec2_ri_price_lists_uri": "",
    "ec2_sp_price_lists_uri": "",
    "lambda_od_price_lists_uri": "",
    "lambda_sp_price_lists_uri": "",
    "ecs_od_price_lists_uri": "",
    "ecs_sp_price_lists_uri": "",
    "sagemaker_od_price_lists_uri": "",
    "sagemaker_sp_price_lists_uri": "",
    "eks_od_price_lists_uri": "",
    "eks_sp_price_lists_uri": "",
    "ec2_ri_cp_data_uri": "",
    "sp_cp_data_uri": ""
}
```


6月確定分
```
{
    "year" : "2024",
    "month" : "06",
    "shared_payer_assembly_id": "20240707T005636Z",
    "metadata_usage_type": "latest",
    "targets" : [
        {
            "assembly_id" : "20240702T125637Z",
            "payer_aws_account_id" : "127466939911"
        }
    ]
}
```