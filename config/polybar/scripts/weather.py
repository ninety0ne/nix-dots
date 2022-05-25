import requests

CITY = "2754618"
KEY = "e48af1563fc6680e0697296db737483e"
UNITS = "Metric"
UNITKEY = "C"

REQ = requests.get("http://api.openweathermap.org/data/2.5/weather?id={}&appid={}&units={}".format(CITY, KEY, UNITS))
try:
    if REQ.status_code == 200:
        CURRENT = REQ.json()["weather"][0]["description"].capitalize()
        TEMP = int(float(REQ.json()["main"]["temp"]))
        #NAME = REQ.json()["name"].capitalize()
        print("{}, {}".format(TEMP, CURRENT))
    else:
        print("ERROR")
except (ValueError, IOError):
    print("Error: unable to print weather data")
