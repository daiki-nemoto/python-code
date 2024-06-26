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
f = open("column_list.txt", encoding='UTF-8')

## 変換
result = ""
for target in f.read().split("\n"):

   result += f'`{target}` string,\n'
   print("~~~~")

## 保存
name = f'csv_check_table_list.txt'
save_file(result, name)

## 通知
nortificatioin('end')