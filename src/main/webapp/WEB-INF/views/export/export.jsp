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
                    <h1 class="page-header" align="center">자재 출고</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
		                
                </div>
                        <!-- /.panel-heading -->

                        <div class="panel-body">
                           <form action="/export/export" method="post">  
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                    	<th style="text-align:center">요청번호</th>
                                        <th style="text-align:center">품목코드</th>                                      
                                        <th style="text-align:center">재고수량</th>
                                        <th style="text-align:center">요청수량</th>
                                        <th style="text-align:center">출고량</th>
                                    </tr>
                                </thead>
                                <tbody>

<c:forEach var="export" items="${export}">                              
                                    <tr class="odd gradeX">
                                    	<td><c:out value="${export.supportNo}"></c:out></td>
                                        <td><c:out value="${export.partCode}"></c:out></td>
                                         <input  type="text" name="partCode"  value="${export.partCode}" hidden>
                                        
                                        <td><c:out value="${export.stockQuantity}"></c:out></td>
                                        <td><c:out value="${export.requirement}"></c:out></td>
                                     
                                       <td>
                                      
                                        <input class="form-control" placeholder="출고량을 적어주세요" type="number" name="exportQuantity" required>
                                       </td>
                                        
                                    </tr>
 </c:forEach>                                  
                                   </tbody>
                            </table>  
          	                     
	              
	                        	
	                        	<div class="row">                    
									<div class="col-lg-10">
			                        	<div class="form-group">
					                         
					                      </div>
			                 		</div>
			                 		
			                 		<div class="col-lg-1">
			                        	<div class="form-group">
			                          		<input type="submit" class="btn btn-primary" value="출고하기" style="float:right">
			                     		</div>
			                 		</div>
			                 		
			                 		<div class="col-lg-1">
			                        	<div class="form-group">
			               					<input type="reset" class="btn btn-primary" value="다시쓰기" >
			                     		</div>
			                 		</div>
			                 </div>
	                        
                     </form>                      

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

<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>

</html>
