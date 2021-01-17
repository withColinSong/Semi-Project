<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <script src='<%=request.getContextPath() %>/js/login.js'></script>
<script type="text/javascript" language="javascript">
    function openPop(){
        var pop_title = "popupOpener" ;
        var frmData = document.frm_search ;
        frmData.action = "../product_list/select.jsp" ;
        frmData.submit() ;
    }
<%

	String user_id = (String) session.getAttribute("member_mid");
	session.setAttribute("user_id", user_id);
%>

</script>
<header id="header">
      <nav class="left">
   
           <div class="search_bar">
                 <form  name="frm_search" role="search" method="get" class="search-form" >
                     <input type="search" class="search-field" placeholder="상품명" value="${param.findStr }" name="findStr" />
                    <button type="submit"  name="btnFind" class="search-submit" onClick="openPop();">검색</button>
               <input type="hidden" name="search" value="select">
                 </form>
            </div> 
  
        </nav>
        <a href ="<%=request.getContextPath() %>/main/index.jsp"><img src="<%=request.getContextPath() %>/images/pineapple.png"/></a>
      <nav class="right">
         <div class = "menubar">
               <li>
                  <a href="<%=request.getContextPath() %>/intro/intro.jsp" class="button alt">소개</a>
                  <ul>
                     <a href="<%=request.getContextPath() %>/intro/intro.jsp" >회사소개</a>
                     <a href="<%=request.getContextPath() %>/intro/vision.jsp" >회사비전</a>
                  </ul>
               </li>
               <li>
                  <a href="<%=request.getContextPath() %>/notice/notice.jsp" class="button alt">커뮤니티</a>
                  <ul>
                     <a href="<%=request.getContextPath() %>/notice/notice.jsp" >공지사항</a>
                     <a href="<%=request.getContextPath() %>/event/event.jsp" >이벤트</a>
                     <a href="<%=request.getContextPath() %>/review.do?job=select" >리뷰 게시판</a>
                  </ul>
               </li>
               <li>
                  <a href="<%=request.getContextPath() %>/inquiry.do?job=select" class="button alt">고객지원</a>
                  <ul>
                     <a href="<%=request.getContextPath() %>/inquiry.do?job=select">QnA게시판</a>
                     <a href="<%=request.getContextPath() %>/faqbook.do?qa=selectFaq">FAQ</a></br>
                     <a href="<%=request.getContextPath() %>/cs_center/cs_func_page.jsp?func=../cs_center/cs_map.jsp" >오시는 길</a>
                  </ul>
               </li>
               
              
               
              	<%
				String admin = (String)session.getAttribute("adminOk");
				if(admin !=null){
				%> 
               <li><a href="<%=request.getContextPath() %>/admin/admin_index.jsp" class="button alt">관리자</a></li>  
                <li><input type='button' id='btnLogout' value='로그아웃' /></li>         
               <%}else if( session.getAttribute("member_mid")== null){ //mid의 속성이 없으면 로그인 이전화면
               %>            
               <li>
                  <a href="<%=request.getContextPath() %>/UsersJoin/agree.jsp" class="button alt">회원가입</a>     
               </li>
               <li><a href="<%=request.getContextPath() %>/login/loginfo.jsp" class="button alt">로그인</a></li>  
               <%} else {%>
                <li>
                  <a href="<%=request.getContextPath() %>/mypage/mypage" class="button alt">마이룸</a>
                  <ul>
                     <a href="<%=request.getContextPath() %>/mypage/cart.jsp" >장바구니</a>
                     <a href="<%=request.getContextPath() %>/mypage/orderlist.jsp" >주문내역</a>
                     <a href="<%=request.getContextPath() %>/mypage/coupon.jsp" >쿠폰함</a>
                  </ul>
               </li>
                <li><input type='button' id='btnLogout' value='로그아웃' /></li>         
                <%} %>         
           </div>
        </nav>  
   </header>
   <script>logInOut()</script>