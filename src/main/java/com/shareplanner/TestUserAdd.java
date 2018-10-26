package main.java.com.shareplanner;

import com.google.gson.Gson;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;
import com.mongodb.util.JSON;
import main.java.com.shareplanner.db.DBConnection;

import java.util.Calendar;

public class TestUserAdd {
    public void AddUser1() {
        Account account = new Account();
        account.id="bearics";
        account.password = "1234";
        account.userCalendar = new UserCalendar();



        UserPlan up1 = new UserPlan();
        up1.planId = 1;
        Calendar cal1 = Calendar.getInstance();
        cal1.set(Calendar.YEAR, 2018);
        cal1.set(Calendar.MONTH, 10);
        cal1.set(Calendar.DATE, 27);
        up1.startDate = cal1;

        Plan plan = new Plan();
        plan.id = 1;
        plan.title="즐거운 영화 만들기";
        plan.content = "나ㅏ나나나ㅏ나나나나";
        plan.nLike = 100;
        plan.tags.add("꿀잼");
        plan.tags.add("노잼");
        plan.tags.add("핵잼");
        plan.themes.add(Theme.사회과학);
        plan.themes.add(Theme.인문);

        MainTerm mt1 = new MainTerm();
        mt1.title = "시나리오 쓰기";
        mt1.content = "시나리오는 글을 잘쓰는게 중요한데. 사실은 재능인듯";
        mt1.ndays = 4;


        MainTerm mt2 = new MainTerm();
        mt2.title = "촬영 하기";
        mt2.content = "영화를 많이 봐야 해요";
        mt2.ndays = 2;


        MainTerm mt3 = new MainTerm();
        mt3.title = "편집하기";
        mt3.content = "유튜브 많이 보면 가능";
        mt3.ndays = 8;

        plan.mainTerms.add(mt1);
        plan.mainTerms.add(mt2);
        plan.mainTerms.add(mt3);

        up1.userPlan = plan;



        account.userCalendar.userPlans.add(up1);

        UserPlan up2 = new UserPlan();
        up2.planId = 2;
        Calendar cal2 = Calendar.getInstance();
        cal2.set(Calendar.YEAR, 2018);
        cal2.set(Calendar.MONTH, 10);
        cal2.set(Calendar.DATE, 29);
        up2.startDate = cal2;

        Plan plan2 = new Plan();
        plan2.id = 2;
        plan2.title="어려운 게임 만들기";
        plan2.content = "나ㅏ나나나ㅏ나나나나";
        plan2.nLike = 10;
        plan2.tags.add("핵어려움");
        plan2.tags.add("으으으");
        plan2.tags.add("넘어렵");
        plan2.themes.add(Theme.공학);
        plan2.themes.add(Theme.인문);

        MainTerm mt11 = new MainTerm();
        mt11.title = "시나리오 쓰기";
        mt11.content = "게임은 시나리오지!!";
        mt11.ndays = 4;


        MainTerm mt22 = new MainTerm();
        mt22.title = "제작 하기";
        mt22.content = "안드를 공부하세요 ㅠㅠ";
        mt22.ndays = 2;


        MainTerm mt33 = new MainTerm();
        mt33.title = "배포하기";
        mt33.content = "배포판 만들면 ㅋㅋㅋㅋ 어려울걸?";
        mt33.ndays = 8;

        plan2.mainTerms.add(mt11);
        plan2.mainTerms.add(mt22);
        plan2.mainTerms.add(mt33);

        up2.userPlan = plan2;

        account.userCalendar.userPlans.add(up2);

        account.themes.add(Theme.공학);
        account.themes.add(Theme.경영);

        DBConnection dbc = new DBConnection();
        MongoClient mongoClient = dbc.mongoDBConnect();
        Gson gson = new Gson();
        BasicDBObject obj = (BasicDBObject) JSON.parse(gson.toJson(account));
        DB db = mongoClient.getDB("SharePlanner");

        DBCollection coll1 = db.getCollection("test");
        coll1.insert(obj);


    }

    public void AddPlan() {

    }
}
