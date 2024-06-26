import requests
import json

api_url = 'https://alpha.illuminator.c-chorus.jp/api/v1.0/external/recommend/simulator/scenarios/status'
access_token = 'eyJraWQiOiJSQkhkOWF5dGQrdHVcLzM5c2dHTHVVbjZpb3RacjREcTY4R3VLZEJZbVJUbz0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI1M2J1cmNvam1oMWo4OTkzbWtiOTRvNXJoayIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiaHR0cHM6XC9cL2FscGhhLmlsbHVtaW5hdG9yLmMtY2hvcnVzLmpwXC9hd3NfYWNjb3VudHM6cmVhZCBodHRwczpcL1wvYWxwaGEuaWxsdW1pbmF0b3IuYy1jaG9ydXMuanBcL2J1ZGdldHM6cmVhZCBodHRwczpcL1wvYWxwaGEuaWxsdW1pbmF0b3IuYy1jaG9ydXMuanBcL2F3c19hY2NvdW50czp1cGRhdGUgaHR0cHM6XC9cL2FscGhhLmlsbHVtaW5hdG9yLmMtY2hvcnVzLmpwXC9jcF9leGNoYW5nZV9yYXRlOnJlYWQiLCJhdXRoX3RpbWUiOjE3MTc0ODc5MDAsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5hcC1ub3J0aGVhc3QtMS5hbWF6b25hd3MuY29tXC9hcC1ub3J0aGVhc3QtMV9qSTVaOVZFSVEiLCJleHAiOjE3MTc0OTE1MDAsImlhdCI6MTcxNzQ4NzkwMCwidmVyc2lvbiI6MiwianRpIjoiMDUxMTJiMGYtNDI0Ny00MWYwLTgwODItMGY2YTRjYzU3OTc2IiwiY2xpZW50X2lkIjoiNTNidXJjb2ptaDFqODk5M21rYjk0bzVyaGsifQ.aR3q9Y00adqKCzXq9LJO2CwzkVgjkTC6cZdghmuNEmwtoxUlpuEN19XjtLbdZuMXFzXMCIfZ3n-LIqrM2Ogl7J6LOu9nAumii3m9xwHe-UjAEv7OHRfwhgphAhqnGCnBaaPLLPlWFPfDP5w6ECpkFJkywNzKXcAH226yJQpAbGzV9bxjZY18h1zRf5Bw53NDUVguq3hp16AlFV6ha-5Zvstbm_6lDEJxdvHdZs3FgRXrHf7ctAU_hVpK3K_iiC63C2W1U8vzWQ3pz68BhLHi3f6lnVAs6P6jgxqUIWLvxzvlKck6evz3hPFkthr9nihysPx0XYVfe7tivvg-z2saQQ'
request_headers = {
    "Authorization": f"Bearer {access_token}",
    "Content-Type": "application/json"
}
param = {
    "scenarios": [
        {
            "id": 8888,
            "status": "wait"
        },
        {
            "id": 9999,
            "status": "wait"
        }
    ]
}

paramJson = json.dumps(param)
response = requests.put(api_url, headers=request_headers, data=paramJson)
print(json.dumps(response.json(), indent=2, ensure_ascii=False))