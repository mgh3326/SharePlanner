<%--
  Created by IntelliJ IDEA.
  User: bearics
  Date: 10/27/2018
  Time: 3:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="main.java.com.shareplanner.Plan" %>
<%@ page import="main.java.com.shareplanner.MainTerm" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="main.java.com.shareplanner.Theme" %>
<%@ page import="main.java.com.shareplanner.db.DBConnection" %>
<%
    request.setCharacterEncoding("UTF-8");

    Plan plan = new Plan();
    plan.id = Math.abs((int)new Date().getTime());
    plan.title = request.getParameter("title");
    String content = request.getParameter("content");
    String[] mainTerms_titles =request.getParameterValues("mainTerms_title");
    String[] mainTerms_contents = request.getParameterValues("mainTerms_content");
    String[] mainTerms_terms = request.getParameterValues("mainTerms_term");
    String[] themes = request.getParameterValues("theme");
    String[] temp = request.getParameterValues("tags");
    MainTerm[] mt = new MainTerm[mainTerms_contents.length];
    for(int i=0;i<mainTerms_contents.length; i++)
    {
        mt[i] = new MainTerm();
        mt[i].title = mainTerms_titles[i];
        mt[i].content = mainTerms_contents[i];
        mt[i].ndays =  Integer.parseInt(mainTerms_terms[i]);
        plan.mainTerms.add(mt[i]);
    }

    for(String st : themes)
    {
        Theme th = Theme.valueOf(st);
        plan.themes.add(th);
    }

    for(String st : temp)
    {
        plan.tags.add(st);
    }

    DBConnection db = new DBConnection();
    db.setPlanDB(plan);

%>

<p>
    <script>window.opener = window.location.href; self.close();</script>
    완료 했습니다.
</p>