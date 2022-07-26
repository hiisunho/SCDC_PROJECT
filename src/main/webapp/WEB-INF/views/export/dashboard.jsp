<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- header add by JuliaChoi at 2022.07.04 -->
<%@ include file ="../includes/header.jsp"%>   
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

    <!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<!-- <script src="//code.jquery.com/jquery.min.js"></script> -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<body>
	<div id="wrapper">
		<!-- nav add by JuliaChoi at 2022.07.06 -->
        <%@ include file ="../includes/nav.jsp"%>   
        <div id="page-wrapper" style="min-height: 868px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header" align="center">재고 현황 리포트</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            대/중/그룹 출고 <a href="/board/register">글 등록</a> 
                           <!-- 그룹별 재고금액 :${count} --> 
                           	그룹별 재고금액 : ${pageMaker.total}                   
<!-- 품목구분선택 add by Julia at 2022.07.05 -->                      
		                 <div class="dropdown">
		                    <input type="text">
		               		<a class="dropdown-toggle" data-toggle="dropdown" href="#">    
							 <i class="fa fa-caret-down"></i>
		                    </a>
		                    <ul class="dropdown-menu dropdown-user">
		                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>대분류</a>
		                        </li>
		                        <li class="divider"></li>
		                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>중분류</a>
		                        </li>
		                        <li class="divider"></li>
		                        <li><a href="login.html"><i class="fa fa-gear fa-fw"></i>소분류</a>
		                        </li>
		                    </ul>
		                    <!-- /.dropdown-품목구분 -->
		                </div>
		                <!-- /.dropdown -->
		                
		                
					<!-- <span style="display: inline-block; width: 45%; margin-right: 2%;">  -->
						품목구분 <select name="library">
						   	<option value=""></option>
						    <option value="대분류">대분류(기판)</option>
						    <option value="중분류">중분류(LCD)</option>
						    <option value="소분류">소분류(케이스)</option>
						</select>
	
	<input class="datepicker">
	
				<script>
				   $(function() {
				       //input을 datepicker로 선언
				       $(".datepicker").datepicker({
				           dateFormat: 'yy-mm-dd' //달력 날짜 형태
				           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
				           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
				           ,changeYear: true //option값 년 선택 가능
				           ,changeMonth: true //option값  월 선택 가능                
				           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
				           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
				           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
				           ,buttonText: "선택" //버튼 호버 텍스트              
				           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
				           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
				           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
				           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
				           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
				           ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
				           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
				       });                    
				       
				       //초기값을 오늘 날짜로 설정해줘야 합니다.
				       $('.datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
				   });
				</script>	
<!-- 품목구분선택 add by Julia at 2022.07.05 --> 		                
                </div>
                        <!-- /.panel-heading -->

                        <div class="panel-body">
                            
                            
                            
                            
                            
                            gsalkjaslkjlkagj
                            
                            
                            
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>
        <!-- /#page-wrapper -->
</div>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->

</body>

</html>
