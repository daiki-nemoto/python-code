# 概要
- パターンは以下の5つ
    1. 確定した + (A2Bは実行済み) + upload済
        - 実行しない
    2.  確定した + (A2Bは実行済み) + uploadしていない
        - 実行する
    3.  確定していない + A2Bは実行済み + upload済
        - 実行しない
    4. 確定していない + A2Bは実行済み + uploadしていない 
        - 実行する
    5.  確定していない + A2Bは実行なし + (uploadしていない)
        - 実行しない
まず5 => 4=> 2　で確認
cur_upload後に 1 => 3をチェック

## 5 のチェック
メタデータがない状態で、lambdaを実行する
```
{
    "year": "2024",
    "month": "02",
    "payer_aws_account_id": "434519024304", 
    "signup_id": 751,
    "execution_date": "2024-03-30 12:00:00",
    "finish_date": "2024-03-30 09:30:00"
}
```

## 4のチェック
実行済のレコードを作成する
execution_dateはcur_individual_chargedのものである必要がある

daikinemoto-a2b-common-save-pre-process-metadata-shared
shared + latest
```
{
   "year": "2024",
   "month": "02",
   "execution_date": "2024-03-07 12:01:31",
   "payer_aws_account_id": "434519024304",
   "shared_payer_assembly_id": "20240306T234629Z",
   "dedicated_payer_assembly_id": "",
   "is_manual_execution": false,
   "metadata_usage_type": "latest"
}
```

メタデータ更新処理
```
shared + latest
{
   "year": "2024",
   "month": "02",
   "execution_date": "2024-03-07 12:01:31",
   "payer_aws_account_id": "434519024304",
   "assembly_id": "20240306T234629Z"
}
```

## 2のチェック
メタデータを確定させる
```
{
   "year": "2024",
   "month": "02",
   "shared_payer_assembly_id": "20240306T234629Z"
}

```


# 3チェック
cur-uploadを実行して、送信済にする
```
{
    "year": "2024", 
    "month": "02", 
    "payer_aws_account_id": "434519024304", 
    "signup_id": 751, 
    "assembly_id": "20240306T234629Z", 
    "execution_date": "2024-03-30 12:00:00", 
    "a2b_execution_date": "2024-03-07 12:01:31"
 }
```

判定lambdaを実行する

# 1チェック
メタデータを消して、確定前の状態にする

判定lambdaを実行する



---
# cur-uploadのチェック
- 指定したアカウントにアップロードできているか
- S3バケット(cur-upload)から削除されているか
- メタデータは登録されているか
- CSVはカラムが正しいか


---
# year month作成
aws lambda invoke \
    --function-name daikinemoto-a2b-common-create-year-month \
    --cli-binary-format raw-in-base64-out \
    --invocation-type Event \
    --payload '{"payer_aws_account_id": "434519024304", "signup_id": 751}' \
    --profile private-a2b-admin \
    response.json




---
athenaを実行するようにする


