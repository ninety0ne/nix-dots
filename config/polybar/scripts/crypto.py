import requests

coin = "SHIBEUR"

req = requests.get("https://api.binance.com/api/v3/ticker/price?symbol={}".format(coin))
try:
    if req.status_code == 200:
        x = float(req.json()["price"])
        y = float(22946645.47698318)
        z = float(x * y)
        wallet = round(z, 2)
        print("{}{}".format("€",wallet))
    else:
        print("Couldn't calculate wallet")
except (ValueError, IOError):
    print("Can't print crypto wallet")
