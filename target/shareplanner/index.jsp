<%--
  Created by IntelliJ IDEA.
  User: bearics
  Date: 10/26/2018
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String contentPage=request.getParameter("contentPage");
    String myPage=request.getParameter("myPage");
    if(contentPage==null)
        contentPage="main.jsp";
    if(myPage != null)
    {
        contentPage += "?myPage=" + myPage;
    }

%>

<jsp:include page="etc/import_template.jsp"/>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">


        <title>SharePlanner</title>

    </head>

    <body>
        <%-- Navigation bar Area--%>
        <jsp:include page="etc/navigation_bar.jsp"/>

        <%-- Content Area --%>
        <jsp:include page="<%=contentPage%>"/>


        <%-- Import js. This work must be in end area to fast loading.--%>
        <jsp:include page="etc/import_js.jsp"/>


    </body>
</html>
