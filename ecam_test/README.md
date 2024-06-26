```
SELECT 
    assembly_id, payer_aws_account_id 
FROM 
    "production_a2b_common_metadata"."metadata_cur" 
WHERE 
    year = '2024'
AND 
    month = '06'
AND 
    execution_date = '2024-06-22 00:00:53'
AND 
    is_succeeded = true
limit 1000;
```