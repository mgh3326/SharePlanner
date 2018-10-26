<%@ page import="main.java.com.shareplanner.TestUserAdd" %>
<%--
  Created by IntelliJ IDEA.
  User: bearics
  Date: 10/26/2018
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%--%>
    <%--TestUserAdd tua = new TestUserAdd();--%>
    <%--tua.AddUser1();--%>

<%--%>--%>

<%-- floating plus button --%>




<!-- Button trigger modal -->
<button type="button" class="btn btn-primary float fa fa-plus my-float" data-toggle="modal" data-target="#exampleModalCenter">
    +
</button>

<style>

</style>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenter" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">게시물을 입력해주세요</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <script>
                    function plusTerm(){
                        $('#Terms').append('title: <input type="text" name="mainTerms_title"> content: <input type="text" name="mainTerms_content"> term: <input type="text" name="mainTerms_term"><br>');
                    }
                    function plustag(){
                        $('#Tags').append(' <input type="text" name="tags">');
                    }
                    var win;
                    function create(){
                        win = open(",'w',**'width=300,height=200'**");
                    }
                </script>
                <form action="/sendplan.jsp" method="post"  target=”w”>
                    Title<br> <input type="text" name="title"><br><br>
                    Content <br><textarea rows="5" cols="30" name="content"></textarea><br><br>
                    Term <a onclick="plusTerm()">+</a><br>
                    <div id="Terms">
                        title: <input type="text" name="mainTerms_title">
                        content: <input type="text" name="mainTerms_content">
                        term: <input type="text" name="mainTerms_term"><br>
                    </div><br>
                    Theme <br>
                    <input type="checkbox" name="theme" value="인문">인문
                    <input type="checkbox" name="theme" value="사회과학">사회과학
                    <input type="checkbox" name="theme" value="자연과학">자연과학
                    <input type="checkbox" name="theme" value="의학">의학
                    <input type="checkbox" name="theme" value="경영">경영
                    <input type="checkbox" name="theme" value="공학">공학
                    <input type="checkbox" name="theme" value="미술">미술
                    <input type="checkbox" name="theme" value="음악">음악
                    <input type="checkbox" name="theme" value="체육">체육<br><br>
                    Tag <a onclick="plustag()">+</a>
                    <div id="Tags"><input type="text" name="tags"></div><br><br>
                    <input type="submit">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<div class="card-columns">
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">제목입니다.</h1>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>안드 책 사기</td>
                        <td>1일</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>안드 책 펴기</td>
                        <td>3일</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>책 덮기</td>
                        <td>4일</td>
                    </tr>
                </tbody>
            </table>
            <p align="right"><small class="text-muted">작성장</small></p>
            <p class="card-text">안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.안드로이드 공부를 쉽게 할 수 있습니다.</p>
            <p class="card-text"><small class="text-muted">총 20일 과정입니다.</small></p>
        </div>
    </div>
</div>