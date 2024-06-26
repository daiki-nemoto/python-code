export SOURCE_BUCKET_NAME=private-g2b-qa-googlecloud-aggregate-intermediate
export DEST_BUCKET_NAME=private-g2b-nts-gc-aggregate-intermediate

echo '# start craete dummy'
for target in `aws s3 ls --profile production-a2b-admin production-a2b-common-cur/shared/434519024304/cur-origin/20240201-20240301/ --recursive | awk '{print $4}' | grep parquet`; do
  aws s3 cp ./zero_bite.txt s3://daikinemoto-a2b-common-cur/${target} --profile private-a2b-admin
done
echo '# finish create dummy'