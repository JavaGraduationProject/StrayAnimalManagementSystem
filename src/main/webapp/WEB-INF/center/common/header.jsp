<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner ">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <a href="#">
           		 <!-- 流浪狗后台管理系统 -->
            </a>
            <div class="menu-toggler sidebar-toggler" style="width: 19px; height: 19px;">
                <span style="top: 8px;"></span>
            </div>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse" style="width: 19px; height: 19px;">
            <span style="top: 8px;"></span>
        </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                <li class="dropdown dropdown-user">
                    <a href="<%=request.getContextPath()%>/center.shtml" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
<%--                         <img alt="" class="img-circle" src="<shiro:principal property="faceImage"/>" /> --%>
                        <span class="username username-hide-on-mobile"> <shiro:principal property="username"></shiro:principal> </span>
<%--                         <input type="hidden" id="activeUserId" name="activeUserId" value="<shiro:principal property="userId"/>"/> --%>
                        &nbsp;
<!--                         <i class="fa fa-angle-down"></i> -->
                    </a>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
                <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                <li class="dropdown dropdown-quick-sidebar-toggler">
                    <a href="<%=request.getContextPath() %>/logout.action" class="dropdown-toggle">
                        <i class="icon-logout"></i>
                    </a>
                </li>
                <!-- END QUICK SIDEBAR TOGGLER -->
            </ul>
        </div>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->