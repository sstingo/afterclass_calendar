from flask import Flask, render_template, jsonify, redirect, send_from_directory, request, url_for
import  pymysql 

conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='root', db='afterclasscalendar', charset='utf8')
app = Flask(__name__)
cursor = conn.cursor()
cursor.execute("select * from 社團")
# 獲取第一行資料
# row_1 = cursor.fetchone()
row_n = cursor.fetchmany(169)
ahhggh = 'row_1'
structhhh =  str(row_n) + "\n"
# print(structhhh)
order = "select * from 社團"
@app.route('/',methods=['GET','POST'])
def hello():
    if(request.method == 'POST'):
        order = request.form.get('select')
        cursor.execute(order)
        row_1 = cursor.fetchone()
        strsql = str(row_1)
        print(order)
        return render_template('abc.html') + strsql
    return render_template('abc.html')


@app.route('/login', methods=['POST'])
def login():
    cursor.execute(order)
    # 獲取第一行資料
    # row_1 = cursor.fetchone()
    row_n = cursor.fetcone()
    ahhggh = 'row_1'
    structhhh =  str(row_n) 
    return structhhh


if __name__ == '__main__':
    app.debug = True
    app.run(debug=False, host='140.134.79.128', port='40128')
