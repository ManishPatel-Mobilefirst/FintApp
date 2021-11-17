import os
import json
import logging
import pyrebase
import webbrowser
from datetime import date, datetime
from decimal import Decimal

from flask import Flask, request, jsonify, session, redirect, url_for
from kiteconnect import KiteConnect

logging.basicConfig(level=logging.DEBUG)

PORT = 5000
HOST = "0.0.0.0"
store_dic={}

config = {
  "apiKey": "AIzaSyA4mh4qznFqITblxRDXWseE3r7MEozzrjk",
  "authDomain": "fintapplication.firebaseapp.com",
  "databaseURL": "https://fintapplication-default-rtdb.firebaseio.com/",
  "storageBucket": "fintapplication.appspot.com",
  "serviceAccount": "fintapplication-firebase-adminsdk-rj3qd-ad96c3818c.json"
}

firebase = pyrebase.initialize_app(config)
db = firebase.database()

serializer = lambda obj: isinstance(obj, (date, datetime, Decimal)) and str(obj)  # noqa

kite_api_key = '2jklwbpwcmf4lddq'
kite_api_secret = 'flh2ch34g5ra9xtru2h9clltbzdqfm3t'

# Create a redirect url
redirect_url = "http://{host}:{port}/".format(host=HOST, port=PORT)

# Login url
login_url = "https://kite.trade/connect/login?api_key={api_key}".format(api_key=kite_api_key)

# Kite connect console url
console_url = "https://developers.kite.trade/apps/{api_key}".format(api_key=kite_api_key)

# App
app = Flask(__name__)
app.secret_key = os.urandom(24)

# Templates
index_template = """
    <div>Make sure your app with api_key - <b>{api_key}</b> has set redirect to <b>{redirect_url}</b>.</div>
    <div>If not you can set it from your <a href="{console_url}">Kite Connect developer console here</a>.</div>
    <a href="{login_url}"><h1>Login to generate access token.</h1></a>"""

login_template = """
    <h2 style="color: green">Success</h2>
    <div>Access token: <b>{access_token}</b></div>
    <h4>User login data</h4>
    <pre>{user_data}</pre>
    <a target="_blank" href="/holdings.json"><h4>Fetch user holdings</h4></a>
    <a target="_blank" href="/orders.json"><h4>Fetch user orders</h4></a>
    <a target="_blank" href="/buy.json"><h4>Place buy order</h4></a>
    <a target="_blank" href="/sell.json"><h4>Place sell order</h4></a>
    <a target="_blank" href="/balance.json"><h4>Check balance</h4></a>
    <a target="_blank" href="https://kite.trade/docs/connect/v1/"><h4>Checks Kite Connect docs for other calls.</h4></a>"""


def get_kite_client():
    """Returns a kite client object
    """
    kite = KiteConnect(api_key=kite_api_key)
    if "access_token" in session:
        kite.set_access_token(session["access_token"])
        print(session["access_token"])
    return kite

@app.route("/", methods=['GET'])
def index():
#    return "ok"
    try:
        api_key=kite_api_key
        request_token = request.args.get("request_token")
        user_id = request.args.get("user_id")
        print(request_token)
        if not request_token:
            return """
                <span style="color: red">
                Error while generating request token.
                </span>
                <a href='/'>Try again.<a>"""
        kite = get_kite_client()
        data = kite.generate_session(request_token, api_secret=kite_api_secret)
        print(data["access_token"])
        global session
        session["access_token"] = data["access_token"]
        print("User_id"+user_id)
        global store_dic
        store_dic[user_id]=data["access_token"]
        db.child(f'{user_id}/zerodha/accessToken').set(data["access_token"])
        print("stored in dictonary"+store_dic[user_id])
        return data["access_token"]
    except Exception as e:
        logging.info("Error: {}".format(e))
        return "Error: {}".format(e)

@app.route("/holdings/",methods=['POST'])
def holdings():
    try:
        print(request.form)
        for k,v in request.form.items():
            if(k=="user_id"):
                user_val=v
        kite=KiteConnect(api_key=kite_api_key)
        for key in store_dic.keys():
            print("user_id: "+key)
            if(key==user_val):
                print("access_token: "+store_dic[key])
                access=store_dic[key]
        kite.set_access_token(access)
        total_holdings = []

        holdings=kite.holdings()
        for holding in holdings:
            obj = {
                "tradingSymbol": holding['tradingsymbol'],
                "exchange": holding['exchange'],
                "quantity": holding['quantity'],
                "price": holding['price'],
                "pnl": holding['pnl']
            }
            db.child(f"{user_val}/zerodha/holdings/{holding['tradingsymbol']}").set(obj)
            total_holdings.append(obj)

        positions=kite.positions()
        for position in positions['net']:
            obj = {
                "tradingSymbol": position['tradingsymbol'],
                "exchange": position['exchange'],
                "quantity": position['quantity'],
                "price": position['average_price'],
                "pnl": position['pnl']
            }
            db.child(f"{user_val}/zerodha/holdings/{position['tradingsymbol']}").set(obj)
            total_holdings.append(obj)

        return {"holdings": total_holdings}
    except Exception as e:
        logging.info("Error: {}".format(e))
        return "Error: {}".format(e)

@app.route("/orders/",methods=['POST'])
def orders():
    try:
        print(request.form)
        for k,v in request.form.items():
            print(k)
            print(v)
            if(k=="user_id"):
                user_val=v
        kite=KiteConnect(api_key=kite_api_key)
        for key in store_dic.keys():
            print("user_id: "+key)
            if(key==user_val):
                print("access_token: "+store_dic[key])
                access=store_dic[key]
        kite.set_access_token(access)
        return jsonify(orders=kite.orders())
    except Exception as e:
        logging.info("Error: {}".format(e))
        return "Error: {}".format(e)

def myconverter(o):
    if isinstance(o, datetime):
        return o.__str__()

@app.route("/buy/",methods=['POST'])
def buy():
    print("in buy function")
    try:
        print(request.form)
        for k,v in request.form.items():
            print(k)
            print(v)
            if(k=="user_id"):
                user_val=v
            elif(k=="tradingsymbol"):
                tradesym=v
            elif(k=="quantity"):
                quan=v
        kite=KiteConnect(api_key=kite_api_key)
        for key in store_dic.keys():
            print("user_id: "+key)
            if(key==user_val):
                print("access_token: "+store_dic[key])
                access=store_dic[key]
        kite.set_access_token(access)
        order_id = kite.place_order(variety="regular",tradingsymbol=tradesym,exchange=kite.EXCHANGE_NSE,transaction_type="BUY",quantity=v,order_type=kite.ORDER_TYPE_MARKET,product="CNC")
        new_orders = kite.orders()
        curr_order = {}
        for order in new_orders:
            if order['order_id'] == order_id:
                db.child(f"{user_val}/zerodha/transactions/{order_id}").set(json.loads(json.dumps(order, default = myconverter)))
                curr_order = order
                break

        return curr_order
    except Exception as e:
        logging.info("Order placement failed: {}".format(e))
        return "Error: {}".format(e)

@app.route("/price/",methods=['POST'])
def price():
    print("in price function")
    try:
        print(request.form)
        for k,v in request.form.items():
            print(k)
            print(v)
            if(k=="user_id"):
                user_val=v
            elif(k=="tradingsym"):
                sym=v
        kite=KiteConnect(api_key=kite_api_key)
        for key in store_dic.keys():
            print("user_id: "+key)
            if(key==user_val):
                print("access_token: "+store_dic[key])
                access=store_dic[key]
        kite.set_access_token(access)
        return jsonify(kite.ltp([sym]))
    except Exception as e:
        logging.info("Order placement failed: {}".format(e))
        return "Error: {}".format(e)

@app.route("/sell/",methods=['POST'])
def sell():
    print("in sell function")
    try:
        print(request.form)
        for k,v in request.form.items():
            print(k)
            print(v)
            if(k=="user_id"):
                user_val=v
            elif(k=="tradingsymbol"):
                tradesym=v
            elif(k=="quantity"):
                quan=v
        kite=KiteConnect(api_key=kite_api_key)
        for key in store_dic.keys():
            print("user_id: "+key)
            if(key==user_val):
                print("access_token: "+store_dic[key])
                access=store_dic[key]
        kite.set_access_token(access)
        order_id = kite.place_order(variety="regular",tradingsymbol=tradesym,exchange=kite.EXCHANGE_NSE,transaction_type="SELL",quantity=quan,order_type=kite.ORDER_TYPE_MARKET,product="CNC")
        new_orders = kite.orders()
        curr_order = {}
        for order in new_orders:
            if order['order_id'] == order_id:
                db.child(f"{user_val}/zerodha/transactions/{order_id}").set(json.loads(json.dumps(order, default = myconverter)))
                curr_order = order
                break

        return curr_order
    except Exception as e:
        logging.info("Order placement failed: {}".format(e))
        return "Error: {}".format(e)

@app.route("/balance/",methods=['POST'])
def balance():
    try:
        print(request.form)
        for k,v in request.form.items():
            if(k=="user_id"):
                user_val=v
        kite=KiteConnect(api_key=kite_api_key)
        for key in store_dic.keys():
            print("user_id: "+key)
            if(key==user_val):
                print("access_token: "+store_dic[key])
                access=store_dic[key]
        kite.set_access_token(access)
        print(kite.margins()['equity']['net'])
        db.child(f'{user_val}/zerodha/balance').set(kite.margins()['equity']['net'])
        return jsonify(balance=kite.margins())
    except Exception as e:
        logging.info("Error: {}".format(e))
        return "Error: {}".format(e)

if __name__ == "__main__":
    logging.info("Starting server: http://{host}:{port}".format(host=HOST, port=PORT))
    context = ('server.crt', 'server.key')
    app.run(host=HOST, port=PORT, debug=True, ssl_context=context)
    # app.run(host=HOST, port=PORT)
    #app.run(debug=True, host=HOST,port=PORT)