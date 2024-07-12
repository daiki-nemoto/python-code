# -------
# 準備
# -------
import datetime
import os

INPUT_NAME  = 'input.html'
OUTPUT_PATH = './output/'

MESSAGES = {
    'start': '変換を開始します',
    'end': '変換が完了しました'
}

# -------
# 関数
# -------
def save_file(target, name):
    with open(name, 'w') as f:
        print(target, file=f)

def devide_file(origin):
    data = origin.split('---')
    return data

def generate_date_string():
    t_delta = datetime.timedelta(hours=9)
    JST = datetime.timezone(t_delta, 'JST')
    now = datetime.datetime.now(JST)

    # list
    time_list = []
    time_list.append(now.strftime('%Y'))
    time_list.append(now.strftime('%m'))
    time_list.append(now.strftime('%d'))

    return time_list

def mkdir_output(time_list):
    target_path = OUTPUT_PATH
    for target in time_list:
        target_path = target_path + target + '/'
        if os.path.exists(target_path) == False:
            os.mkdir(target_path)
    
    return target_path

def transform_data(origin_data):
    data = origin_data.replace('\n', '')
    data = data.replace(' ', '')
    return data

def nortificatioin(type):
    message = MESSAGES[type]

    print('---')
    print(message)
    print('---')



# ------- 
# メイン
# -------

## 通知
nortificatioin('start')

## 読み込み
f = open(INPUT_NAME, 'r', encoding='UTF-8')
data = f.read()

## 分割
data_array = devide_file(data)

## 準備
index = 1
time_list = generate_date_string()

## ディレクトリ確認、作成
target_path = mkdir_output(time_list)
result = "|根本|"

## 変換
for target in data_array:

    output_data = transform_data(target)

    result = result + output_data + "|"

## 保存
name = f'{target_path}0.txt'
# save_file(result, name)
print(result)

## 通知
nortificatioin('end')



