
# SQL


---
## 4月 対象のCUR

```
SELECT 
    assembly_id, 
    payer_aws_account_id 
FROM 
    "production_a2b_common_metadata"."metadata_cur" 
WHERE 
    year = '2024'
AND 
    month = '04'
AND 
    is_fixed = true
ORDER BY 
    payer_aws_account_id
limit 50;
```

## 5月 対象のCUR

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
ORDER BY 
    payer_aws_account_id
limit 50;
```


---
# 4月　cpdata
execution_date = 2024-05-08 09:01:33
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
    month = '04'
AND 
    execution_date = '2024-05-08 09:01:33'
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

# 5月 cpdata
execution_date = 2024-06-04 06:15:54

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