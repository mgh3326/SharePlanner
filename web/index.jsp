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
    if(contentPage==null)
        contentPage="main.jsp";
%>

<jsp:include page="html/import_template.jsp"/>

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
        <jsp:include page="html/navigation_bar.jsp"/>


        <%-- Body Area--%>
        <div id="main">
            <jsp:include page="<%=contentPage%>"/>

        </div>


        <jsp:include page="html/import_js.jsp"/>

    </body>
</html>
