package main.java.com.shareplanner;

import java.util.ArrayList;
import java.util.Calendar;

public class Account {
    public String id;
    public String password;
    public UserCalendar userCalendar;
    public ArrayList<Theme> themes = new ArrayList<Theme>();

    public Account() {
        themes = new ArrayList<Theme>();
    }
}
