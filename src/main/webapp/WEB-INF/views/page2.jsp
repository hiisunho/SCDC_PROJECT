<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/includes/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<!-- <script src="//code.jquery.com/jquery.min.js"></script> -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<body>
	<div id="wrapper">

	<!-- include nav.jsp add by JuliaChoi 2022.07.06 -->
	<%@ include file="../views/includes/nav.jsp"%>
		<div id="page-wrapper" style="min-height: 868px;">
			<div class="row"><span style="display: inline-block; width: 45%; margin-right: 2%;">
				생산품 <select name="job">
				   	<option value=""></option>
				    <option value="냉장고">냉장고</option>
				    <option value="선풍기">선풍기</option>
				    <option value="공기청정기">공기청정기</option>
					</select>

		&nbsp;&nbsp;&nbsp;&nbsp; 
		일자&nbsp;&nbsp;<input class="form-control" type="date" name="startDate" value="${pageMaker.cri.selectedDate}">
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
	<!-- 링크가 파일이름이 되기 때문에 엑셀파일의 확장자를
	뒤에 붙이는 것이 좋습니다-->
	<a href="excel.xls">엑셀파일 만들기</a> &nbsp;&nbsp;&nbsp;&nbsp;
	<!-- 엑셀 파일을 읽어서 출력하는 요청 -->
    <a href="excelread.do">엑셀파일 읽기</a><br/>	
    		
				<div class="col-sm-12"><table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 200%;">
                                <thead>
         <tr role="row">
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목코드</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목이름</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">약칭</th>
			 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목구분</th>  
		     <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">도면번호</th>
	  		 <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">도면이미지</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">공용여부</th>
	         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">품목설명</th>
        </tr>
                                </thead>



                                <tbody>
           
<c:forEach var="part" items="${report}">                              
                                    <tr class="odd gradeX">
                                        <td><c:out value="${part.partCode}"></c:out></td>
                                        <td><c:out value="${part.partName}"></c:out></td>
                                        <td><c:out value="${part.nickName}"></c:out></td>
                                        <td><c:out value="${part.library}"></c:out></td>
                                        <td><c:out value="${part.drw_No}"></c:out></td>
                                        <td><c:out value="${part.drw_Img}"></c:out></td>
                                        <td><c:out value="${part.common}"></c:out></td>
                                        <td><c:out value="${part.remark}"></c:out></td>
                                        
                                    </tr>
</c:forEach> 
                                    </tbody>
                            </table></div>
                             
                             <c:if test="${pageMaker.prev}">
                            <a href="/board/list?pageNum=${pageMaker.startPage-1}&&amount=${pageMaker.cri.amount}"> prev </a>  &nbsp;&nbsp;&nbsp;&nbsp;
                            </c:if>
                            
                            <c:forEach begin="${pageMaker.startPage}"  end="${pageMaker.endPage}" var="num">
                            	 <a href="/board/list?pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">
  <%-- 현재페이지를 ${param.pageNum } or ${pageMaker.cri.pageNum } or ${critera.pageNum} --%>
                            	 <c:if test="${pageMaker.cri.pageNum == num }" >
                            	 	<b>${num} </b>
                            	 </c:if>
	                            
	                             <c:if test="${pageMaker.cri.pageNum != num }" >
                            	 	${num} 
                            	 </c:if>

                            	
                            	 </a> &nbsp;&nbsp;&nbsp;&nbsp;
                            </c:forEach>
                            
                            <c:if test="${pageMaker.next}">
                            	<a href="/board/list?pageNum=${pageMaker.endPage+1}&&amount=${pageMaker.cri.amount}"> next </a>
                            </c:if>
     &nbsp;&nbsp;&nbsp;&nbsp;   
                         
   <form action="/page" method="get">                        
   <select name="type">
    <option >검색조건</option>
   	<option ${pageMaker.cri.type =="T" ? selected : "" } value="T">품목코드</option>
   	<option ${pageMaker.cri.type =="C" ? selected : "" } value="C">제품명</option>
   </select>     
   <input type="text" name="keyword" value="${pageMaker.cri.keyword }"> 
   <input type="submit" value="검색">                      
   </form> 
                            
                            
              </div>		
       </div>
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