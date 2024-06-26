# 当日の手順
1. パラメータストアから最新のdedicatedを確認する
    - https://ap-northeast-1.console.aws.amazon.com/systems-manager/parameters/%252Fproduction-a2b-common%252Fmwaa%252Fairflow%252Fdedicated-payer-aws-account-ids/description?region=ap-northeast-1&tab=Table#list_parameter_filters=Name:Contains:dedicated
2. dedicated_aws_account_idでパラメータを作る
3. 2で作成したパラメータをもとにcompare.pyを使ってSQLを作る
4. 本番のAthenaでクエリを順次実行して、SpreadSheetに記録する
    - https://docs.google.com/spreadsheets/d/1ReDUKLhdUEHJmF3B4A9po1CnJdiDGmWEPHQISr5YNsA/edit?gid=0#gid=0
5. main.pyの対象を本番のバケットに切り替える
6. main.pyを実行する
    - 2時間かかる
7. 終了後、cpとmappingdataのクローラーを実行して、移動前と移動後で件数が一致するか確認する
8. 一致していれば移動完了

※ こちらの作業は前日に先に行っておいた方がいい


## cp連携データ　localでのクエリ
テーブル名変えれば全て同じ
```
SELECT payer_aws_account_id, count(*) AS count FROM "daikinemoto_a2b_local_aws_aggregate"."chorus_portal_account" 
GROUP BY payer_aws_account_id
limit 1000;
```

## cp連携データ　prodのクエリ
コードで出力した


## mapping ri
```
SELECT count(*) FROM "daikinemoto_a2b_local_aws_aggregate"."pricing_type_reserved" limit 10;
```

```
SELECT count(*) FROM "production_a2b_common_aws_aggregate"."pricing_type_reserved" limit 10;
```


## mapping sp
```
SELECT count(*) FROM "production_a2b_common_aws_aggregate"."pricing_type_savingsplan" limit 10;
```
