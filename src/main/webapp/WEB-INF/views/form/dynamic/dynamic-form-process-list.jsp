<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>动态Form流程列表</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-jquery-ui-theme.jsp" %>
    <link href="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.css" type="text/css"
          rel="stylesheet"/>
    <link href="${ctx }/js/common/plugins/qtip/jquery.qtip.min.css" type="text/css" rel="stylesheet"/>

    <script src="${ctx }/js/common/jquery.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/extends/i18n/jquery-ui-date_time-picker-zh-CN.js"
            type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/validate/jquery.validate.pack.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/validate/messages_cn.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/qtip/jquery.qtip.pack.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/common.js" type="text/javascript"></script>
    <script src="${ctx }/js/module/form/dynamic/dynamic-process-list.js" type="text/javascript"></script>
</head>

<body>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success">${message}</div>
    <!-- 自动隐藏提示信息 -->
    <script type="text/javascript">
        setTimeout(function () {
            $('#message').hide('slow');
        }, 5000);
    </script>
</c:if>
<table width="100%" class="table table-bordered table-hover table-condensed">
    <thead>
    <tr>
        <th>ID</th>
        <th>DID</th>
        <th>名称</th>
        <th>KEY</th>
        <th>版本号</th>
        <th>XML</th>
        <th>图片</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${processes }" var="process">
        <tr>
            <td class='process-id'>${process.id }</td>
            <td>${process.deploymentId }</td>
            <td class='process-name'>${process.name }</td>
            <td>${process.key }</td>
            <td>${process.version }</td>
            <td><a target="_blank"
                   href='${ctx }/workflow/resource/deployment?deploymentId=${process.deploymentId}&resourceName=${process.resourceName }'>${process.resourceName }</a>
            </td>
            <td><a target="_blank"
                   href='${ctx }/workflow/resource/deployment?deploymentId=${process.deploymentId}&resourceName=${process.diagramResourceName }'>${process.diagramResourceName }</a>
            </td>
            <td><a class="startup-process btn"><i class="icon-play"></i>启动</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
