<%@page import="me.kafeitu.demo.activiti.util.PropertyFileUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%
    PropertyFileUtil.init();
%>
<head>
    <%@ include file="/common/global.jsp" %>
    <script>
        var notLogon = ${empty user};
        if (notLogon) {
            location.href = '${ctx}/login?timeout=true';
        }
    </script>
    <%@ include file="/common/meta.jsp" %>
    <title><sitemesh:write property='title'/></title>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link rel="stylesheet" type="text/css" href="${ctx }/css/menu.css"/>
    <%@ include file="/common/include-custom-styles.jsp" %>
    <link href="${ctx }/css/main.css" type="text/css" rel="stylesheet"/>
    <style type="text/css">
        body {
            padding-top: 60px;
        }

        #activitiLogo {
            height: 30px !important;
            margin-top: -8px;
            margin-bottom: -8px;
        }
    </style>

    <script src="${ctx}/js/common/jquery.js" type="text/javascript"></script>
    <script src="${ctx}/js/common/plugins/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/js/module/main/main.js" type="text/javascript"></script>
</head>
<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a href="#" class="brand">
                <img id="activitiLogo" src="${ctx}/images/activiti_logo.png"/>
            </a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li><a href="${ctx}/main/index" rel="main/welcome.action"><i
                            class="icon-home icon-black"></i>首页</a>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i
                                class="icon-th-large icon-black"></i>请假（自定义表单）<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${ctx}/oa/leave/apply" rel="oa/leave/apply">请假申请(自定)</a></li>
                            <li><a href="${ctx}/oa/leave/list/task" rel="oa/leave/list/task">请假办理(自定)</a></li>
                            <li><a href="${ctx}/oa/leave/list/running" rel="oa/leave/list/running">运行中流程(自定)</a></li>
                            <li><a href="${ctx}/oa/leave/list/finished" rel="oa/leave/list/finished">已结束流程(自定)</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-fire icon-black"></i>动态表单<b
                                class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${ctx}/form/dynamic/process-list" rel="form/dynamic/process-list">流程列表(动态)</a>
                            </li>
                            <li><a href="${ctx}/form/dynamic/task/list" rel="form/dynamic/task/list">任务列表(动态)</a></li>
                            <li><a href="${ctx}/form/dynamic/process-instance/running/list"
                                   rel="form/dynamic/process-instance/running/list">运行中流程表(动态)</a></li>
                            <li><a href="${ctx}/form/dynamic/process-instance/finished/list"
                                   rel="form/dynamic/process-instance/finished/list">已结束流程(动态)</a></li>
                        </ul>
                    </li>
                    <li><a href="${ctx}/workflow/process-list" rel='workflow/process-list'><i
                            class="icon-wrench icon-black"></i>流程管理</a></li>
                </ul>

                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-user icon-black" style="margin-right: .3em"></i>${user.lastName }/${user.id }<b
                                class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a id="changePwd" href="#"><i class="icon-wrench icon-black"></i>修改密码</a></li>
                            <li><a id="loginOut" href="#"><i class="icon-eject icon-black"></i>安全退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <sitemesh:write property='body'/>
</div>
<hr class="soften">
<footer>
    <div class="container">
        <p class="pull-right"></p>
        <a href="http://www.kafeitu.me">www.kafeitu.me</a> By <a href="http://weibo.com/kafeituzi">@咖啡兔</a>
        <span class="copyright">&copy;2012</span>
        <span class="version" style="padding-left: .5em">版本：<%=PropertyFileUtil.get("system.version") %></span>
    </div>
</footer>
</body>
</html>