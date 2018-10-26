package main.java.com.shareplanner;

import java.util.ArrayList;



public class Plan {
    public int id;
    public String title;
    public String content;     // describe the content
    public ArrayList<MainTerm> mainTerms = new ArrayList<MainTerm>();  // main terms
    public ArrayList<Theme> themes = new ArrayList<Theme>();
    public ArrayList<String> tags = new  ArrayList<String>();
    public int nLike;  // like num
    public ArrayList<Comment> comments = new ArrayList<Comment>();

    public Plan() {
        mainTerms = new ArrayList<MainTerm>();  // main terms
        themes = new ArrayList<Theme>();
        tags = new  ArrayList<String>();
        comments = new ArrayList<Comment>();

    }
}

