 
from bottle import get
from bottle import post
from bottle import request
from bottle import Bottle
from bottle import run,static_file
import zmq,json
cont = zmq.Context()
s= cont.socket(zmq.REQ)
s.setsockopt(zmq.LINGER, 0)
s.connect("tcp://127.0.0.1:5001")
app = Bottle()
def check_login(user,password):
    if user == "pablo" and password=="pablo":
        return True
    else:
        return False
@app.route('/resources/<path:path>/:filename')
def server_static1(path,filename):
    print(' path static: ', path,filename) 
    return static_file(filename, root='resources/'+path)
@app.route('/resources/:filename')
def server_static2(filename):
    return static_file(filename, root='resources/')
@app.route('/')
def fhtml4():
    return static_file('login.html', root='.')
@app.route('/main', method='POST')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')

    if check_login(username, password):
        print("retorne main.html")
        return static_file('main.html', root='.')
        #return(dict(estado="ok"))
    else:
        return "<p>Login failed.</p>"

@app.route('/ejecutar', method='POST')
def ejecutar():
    #print(request.forms.get('nose'))
    msg=["w",request.forms.get('foco'),request.forms.get('estado')]
    s.send(json.dumps(msg).encode())
    print(msg)
    msg_r=s.recv()
    return None
@app.route('/lee', method='POST')
def lee():
    msg=["r"]
    s.send(json.dumps(msg).encode())
    msg_r=s.recv().decode()
    return json.loads(msg_r)
run(app, host='0.0.0.0', port=80)