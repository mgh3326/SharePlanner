package main.java.com.shareplanner.db;


import com.google.gson.Gson;
import com.mongodb.*;
import com.mongodb.util.JSON;
import main.java.com.shareplanner.Account;
import main.java.com.shareplanner.Plan;


public class DBConnection {

    public MongoClient mongoDBConnect() {
        MongoClientURI connectURI = new MongoClientURI("mongodb://mgh3326:1234@52.79.178.178:27017/SharePlanner");
        MongoClient mongoClient = new MongoClient(connectURI);

        return mongoClient;
    }

    public void setPlanDB(Plan plan) {
        DBConnection dbc = new DBConnection();
        MongoClient mongoClient = dbc.mongoDBConnect();
        Gson gson = new Gson();
        BasicDBObject obj = (BasicDBObject) JSON.parse(gson.toJson(plan));
        DB db = mongoClient.getDB("SharePlanner");

        DBCollection coll1 = db.getCollection("test");
        coll1.insert(obj);
    }





}
