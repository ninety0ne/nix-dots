import requests

COIN = "SHIBEUR" 

REQ = requests.get("https://api.binance.com/api/v3/ticker/price?symbol={}".format(COIN))
try:
    if REQ.status_code == 200:
        REQ = REQ.json()
        print(f"{REQ['price']}")


        # print("{}".format(PRICE))
    else:
        print("Error")
except (ValueError, IOError):
    print("Cannot fetch crypto prices")
