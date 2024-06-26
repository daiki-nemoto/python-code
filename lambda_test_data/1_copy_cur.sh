
year="2024"
month="03"
date_range="20240301-20240401"
dedicated_id="014229765626"

# shared
echo '--- shared ---'
for assembly_id in `aws s3 ls --profile private-a2b-admin production-a2b-common-cur/shared/434519024304/cur-origin/${date_range}/ | awk '{print $2}' | head -2 `; do
  for file_name in `aws s3 ls --profile private-a2b-admin production-a2b-common-cur/shared/434519024304/cur-origin/${date_range}/${assembly_id}  | awk '{print $4}' | head -2 `; do
    aws s3 cp --profile private-a2b-admin s3://production-a2b-common-cur/shared/434519024304/cur-origin/${date_range}/${assembly_id}${file_name} s3://daikinemoto-a2b-common-cur/shared/434519024304/cur-origin/${date_range}/${assembly_id}${file_name}
  done
done

# dedicated
echo '--- dedicated ---'
for assembly_id in `aws s3 ls --profile private-a2b-admin production-a2b-common-cur/dedicated/${dedicated_id}/cur-origin/${date_range}/ | awk '{print $2}' | head -2 `; do
  for file_name in `aws s3 ls --profile private-a2b-admin s3://production-a2b-common-cur/dedicated/${dedicated_id}/cur-origin/${date_range}/${assembly_id}  | awk '{print $4}' | head -2 `; do
    aws s3 cp --profile private-a2b-admin s3://production-a2b-common-cur/dedicated/${dedicated_id}/cur-origin/${date_range}/${assembly_id}${file_name} s3://daikinemoto-a2b-common-cur/dedicated/${dedicated_id}/cur-origin/${date_range}/${assembly_id}${file_name}
  done
done