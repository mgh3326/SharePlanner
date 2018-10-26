<%--
  Created by IntelliJ IDEA.
  User: bearics
  Date: 10/26/2018
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <div>
        <a class="navbar-brand" href="/index.jsp">SharePlanner</a>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-info login" data-toggle="modal" data-target="#loginModal">
            Login
        </button>

        <!-- Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Please login.</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <jsp:include page="../login/naverlogin.jsp"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li id="mypage" class="nav-item ">
                <a class="nav-link" href="/index.jsp?contentPage=mypage.jsp">MyPage <span class="sr-only">(current)</span></a>
            </li>
            <li id="calendar" class="nav-item">
                <a class="nav-link" href="/index.jsp?contentPage=calendar.jsp">Calendar</a>
            </li>
            <li id="market" class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="/index.jsp?contentPage=market.jsp" id="dropdown-market" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Market</a>
                <%--<a class="nav-link disabled" href="/market.jsp">Market</a>--%>
                <div class="dropdown-menu" aria-labelledby="dropdown-market">
                    <a class="dropdown-item" href="#">Theme#1</a>
                    <a class="dropdown-item" href="#">Theme#2</a>
                    <a class="dropdown-item" href="#">Theme#3</a>
                    <a class="dropdown-item" href="#">Theme#4</a>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>


<script>
    var contentPage = getUrlParameter('contentPage').split(".");
    $('#' + contentPage[0]).addClass("active");
</script>