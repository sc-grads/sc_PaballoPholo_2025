from flask import Flask,request

app = Flask(__name__)

#API endpoint - where we'll store our data

stores = [
    {
        "name": "My Store",
        "Items": [
            {
                "name": "Chair",
                "price": 15.99
            }
        ]
    }
]

@app.get("/store") #Our endpoint
def get_stores():
    return {"stores":stores}

@app. post("/store") #A function to handle post request
def create_store():
    request_data = request.get_json()
    new_store = {"name" : request_data["name"], "items": []}
    stores. append(new_store)
    return new_store, 201 # 201 is the status code to say "Ok, I've accepted the data"

@app. post("/store/<string:name>/item") #For flask to dynamically fetch the store name if it's added on the url
def create_item(name) :
    request_data = request.get_json()
    for store in stores: #Goes through the stores list
        if store["name"] == name: #Checks if the store name is available
            new_item = {"name" : request_data["name"], "price": request_data["price"]}
            store["items"]. append(new_item)
            return new_item, 201
    return {"message" : "Store not found"}, 404

@app. get("/store/<string:name>")
def get_store(name) :
    for store in stores:
        if store["name"] == name:
            return store
    return {"message": "Store not found"}, 404

@app. get("/store/<string:name>/item")
def get_item_in_store(name):
    for store in stores:
        if store["name"] == name:
            return {"items" : store["items"]}
    return {"message": "Store not found"}, 404