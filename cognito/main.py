import base64
import requests
import json

oauth_token_url = 'https://alpha-illuminator-common.auth.ap-northeast-1.amazoncognito.com/oauth2/token'
client_id = '53burcojmh1j8993mkb94o5rhk'
client_secret = '27ddv5ggdkgm9qlj8aq5lfkerttjv8ukh1rvt7epgb8ao1abpu'
grant_type = 'client_credentials'

# ⚠複数のスコープを指定する場合、空白などのホワイトスペースで区切りすること
scopes = 'https://alpha.illuminator.c-chorus.jp/aws_accounts:read https://alpha.illuminator.c-chorus.jp/aws_accounts:update https://alpha.illuminator.c-chorus.jp/budgets:read https://alpha.illuminator.c-chorus.jp/cp_exchange_rate:read'

client_credential = base64.b64encode(f'{client_id}:{client_secret}'.encode())
request_headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    "Authorization": f"Basic {client_credential.decode('utf-8')}",
}

request_payload = f'grant_type={grant_type}&client_id={client_id}&scope={scopes}'
response = requests.post(oauth_token_url, headers=request_headers, data=request_payload)

print(json.dumps(response.json(), indent=2))