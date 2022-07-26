<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/includes/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>


<body>
	<div id="wrapper">
		<div id="page-wrapper" style="min-height: 868px;">
			<div class="row"><span style="display: inline-block; width: 45%; margin-right: 2%;">
			
				<form action="/exportPart" method="get">
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
						         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">재고수량</th>
						         <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 168px;">출고량</th>
					        </tr>
						</thead>
	                    <tbody>
	           
	                        <tr class="gradeA odd" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Firefox 1.0</td>
	                                <td>Win 98+ / OSX.2+</td>
	                                <td class="center">1.7</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td>
	                            </tr><tr class="gradeA even" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Firefox 1.5</td>
	                                <td>Win 98+ / OSX.2+</td>
	                                <td class="center">1.8</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	 								<td class="center"><input type="int"></td>                                     
	                            </tr><tr class="gradeA odd" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Firefox 2.0</td>
	                                <td>Win 98+ / OSX.2+</td>
	                                <td class="center">1.8</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr><tr class="gradeA even" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Firefox 3.0</td>
	                                <td>Win 2k+ / OSX.3+</td>
	                                <td class="center">1.9</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr><tr class="gradeA odd" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Camino 1.0</td>
	                                <td>OSX.2+</td>
	                                <td class="center">1.8</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr><tr class="gradeA even" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Camino 1.5</td>
	                                <td>OSX.3+</td>
	                                <td class="center">1.8</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr><tr class="gradeA odd" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Netscape 7.2</td>
	                                <td>Win 95+ / Mac OS 8.6-9.2</td>
	                                <td class="center">1.7</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr><tr class="gradeA even" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Netscape Browser 8</td>
	                                <td>Win 98SE+</td>
	                                <td class="center">1.7</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr><tr class="gradeA odd" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Netscape Navigator 9</td>
	                                <td>Win 98+ / OSX.2+</td>
	                                <td class="center">1.8</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr><tr class="gradeA even" role="row">
	                                <td class="sorting_1">Gecko</td>
	                                <td>Mozilla 1.0</td>
	                                <td>Win 95+ / OSX.1+</td>
	                                <td class="center">1</td>
	                                <td class="center">A</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center">1.7</td>
	                                <td class="center"><input type="int"></td> 
	                            </tr>
	                            
							</tbody>														
						</table>
						<input type="reset" value="초기화">
						<input type="submit" value="저장">
					</div>
				</form>
		


		<!-- jQuery -->
		

		<!-- Bootstrap Core JavaScript -->
		<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="../vendor/metisMenu/metisMenu.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="../dist/js/sb-admin-2.js"></script>
</body>

</html>