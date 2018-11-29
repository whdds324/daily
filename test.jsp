<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
  <title>오늘 뭐하지?</title>
  <meta charset="utf-8">
 	<style>
 
  #grid {
     display: grid;
 	 grid-template-columns: 200px 1fr 1fr;
 	
  }
  
  .leftmenu {
  	 grid-column-start: 1;
  	 grid-column-end: 2;
  	 grid-row-start: 1;
  	 grid-row-end: 3;   
  	border-right:1px solid gray;
  }
  .main1 {
  	grid-column-start: 2;
  	 grid-column-end: 3;
  	 grid-row-start: 1;
  	 grid-row-end: 3;   
  	border-right:1px solid gray;
  }
  .main2 {
  	grid-column-start: 3;
  	 grid-column-end: 4;
  	 grid-row-start: 1;
  	 grid-row-end: 2;  
  	 border-bottom:1px solid gray; 
  }
  
  .main3 {
  grid-column-start: 3;
  	 grid-column-end: 4;
  	 grid-row-start: 2;
  	 grid-row-end: 3;   
  	
  }
  h1 {
  	 font-size:45px;
      text-align: center;
      border-bottom:1px solid gray;
      margin:0;
      padding:20px;
     
  }
    
  </style>
</head>
<body>
	<h1><a href="/Main.jsp"><div onmouseover="this.style.color='coral'" onmouseout="this.style.color='black'">오늘 뭐하지?</div></a></h1>
	<div id="grid">
		<div class ="leftmenu">
			<table border="1">
			 	<tr><td colspan="2">아이디 : ${loginuser}</td></tr> <br>
			 	<tr> <td><input type = "button" value="my page" onclick = "location.href = 'MypageServlet'"></td>  
				<td><input type = "button" value="로그아웃" onclick = "location.href = 'LoginServlet' "></td> </tr>	
			</table>
		</div>
		
		<div class="main1">
			<h2><a target="_blank" href="https://opentutorials.org/course/3084" onmouseover="this.style.color='coral'" onmouseout="this.style.color='black'">오늘의 코딩</a></h2>
    		<p>
        	<iframe width="700" height="500" src="https://www.youtube.com/embed/tZooW6PritE?list=PLuHgQVnccGMDZP7FJ_ZsUrdCGH68ppvPb" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        	</p>
		</div>
		
		<div class="main2">
			 <h2 align = "center">오늘의 명언.</h2>
				<table border = "2" align = "center" style ="margin-top:5px;" >	

					<tr><td>${kortxt}</td> <br></tr>
					<tr><td>${engtxt}</td> <br></tr>
					<tr><td align ="center">${speaker}</td></tr>

				</table>	
			
		</div>
		
		<div class="main3">
			<h2 align = "center">오늘의 날씨.</h2>
				<table border = "1">	
					<tr align ="center"></tr>
					<tr>

					<h4 align = "center"><a href ="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=${addr}+
						날씨" align="center"  target ="_blank">회원님의 주소 (${addr}) 날씨 보기.</a></h4>

					</tr>
		</div>
		
	</div>
  
  </body>
  </html>
