<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
           <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
                <a class="navbar-brand" href="index.html">조달구매시스템</a>
            </div>
           
 <!-- navbar-top  2022.07.05 by JuliaChoi -->
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li >     
                        <i class="fa fa-user fa-fw"></i> ${signedUser} 님
                </li>
                <li>
                <a href="login">
                        <i class="fa fa-sign-out fa-fw"> </i>로그아웃 
                </a>          
                </li>
            </ul>
            <!-- /.navbar-top-links -->

 <!-- navbar-top  2022.07.05 by JuliaChoi -->
                 
           <div class="navbar-default sidebar" role="navigation">
               <div class="sidebar-nav navbar-collapse">
                   <ul class="nav" id="side-menu">
                       <li class="sidebar-search">
                           <div class="input-group custom-search-form">
                               <input type="text" class="form-control" placeholder="Search...">
                               <span class="input-group-btn">
                               <button class="btn btn-default" type="button">
                                   <i class="fa fa-search"></i>
                               </button>
                           </span>
                           </div>
                           <!-- /input-group -->
                       </li>
 <!-- side bar 2022.07.04 by JuliaChoi -->
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 회원관리 <span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">회원 가입</a>
                               </li>
                               <li>
                                   <a href="#">회원정보 수정 / 삭제</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i>정보등록 <span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="#">제품 정보 등록 / 조회</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:4080/part/partList">품목 정보 등록 / 조회</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:4080/company/companyList">회사정보 등록 / 조회</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 발주계획<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="http://m-it.iptime.org:4080/support/supportList">조달계획 등록 / 조회</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:4080/contract/contractList">계약정보 등록 / 조회</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 구매발주<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="http://m-it.iptime.org:1780/po/plan">발주 계획 입력</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:1780/po/order">발주 진행</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:1780/po/inspection">진척 검수</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:1780/po/progress">납기진도율</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 자재입고<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="http://m-it.iptime.org:8088/orderStatus">현황관리</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:8088/wareHandling">입고처리</a>
                               </li>
                               <li>
                                   <a href="http://m-it.iptime.org:8088/transactionClose">거래마감</a>
                               </li>
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                       <li>
                           <a href="#"><i class="fa fa-wrench fa-fw"></i> 자재출고<span class="fa arrow"></span></a>
                           <ul class="nav nav-second-level">
                               <li>
                                   <a href="/export/stock">자재 현황</a>
                               </li>
                               <li>
                                   <a href="/export/request">출고 요청</a>
                               </li>
                               <li>
                               		<a href="/export/status">출고 현황</a>
                               </li>
                               <li>
                                     <a href="/export/report">재고리포트</a>
                               </li>
                              
                           </ul>
                           <!-- /.nav-second-level -->
                       </li>
                   </ul>
               </div>
               <!-- /.sidebar-collapse -->
           </div>
           <!-- /.navbar-static-side -->
       </nav>
       	<!-- Navigation -->