def MyTransform (glueContext, dfc) -> DynamicFrameCollection:
    selected = dfc.select(list(dfc.keys())[0]).toDF() # 前処理の結果を取得
    path = "s3://nemoto-test-bucket-20220413/glue-test/output/" # S3の出力先を指定
    selected.coalesce(1).write().option("header", "True").option("sep", ",").option("quoteAll", "True").option("escape", "\"").option("emptyValue", "") .option("nullValue", "") .mode("overwrite").csv(path) 