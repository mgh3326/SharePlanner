<%--
  Created by IntelliJ IDEA.
  User: bearics
  Date: 10/26/2018
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String myPage=request.getParameter("myPage");
    if(myPage == null)
    {
        myPage = "userinfo";
    }

%>


<div class="container-fluid">
    <div class="row">
        <%-- Side Bar Area--%>
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a id="userinfo" class="nav-link" href="index.jsp?contentPage=mypage.jsp&myPage=userinfo">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                            회원 정보
                        </a>
                    </li>

                    <li class="nav-item">
                        <a id="cart" class="nav-link cart" href="index.jsp?contentPage=mypage.jsp&myPage=cart">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                            장바구니
                        </a>
                    </li>
                    <li class="nav-item">
                        <a id="myplans" class="nav-link myplans" href="index.jsp?contentPage=mypage.jsp&myPage=myplans">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                            작성한 일정
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <%-- Body Area--%>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <jsp:include page='<%= "/mypage/" + myPage + ".jsp" %>'/>

        </main>
    </div>
</div>


<script>
    var myPage = getUrlParameter('myPage');
    $('#' + myPage).addClass("active");
</script>