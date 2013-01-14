<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ include file="/common/global.jsp" %>
    <script>
        var notLogon = ${empty user};
        if (notLogon) {
            location.href = '${ctx}/login?error=nologon';
        }
    </script>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-jquery-ui-theme.jsp" %>
    <title>流程列表</title>

    <script src="${ctx }/js/common/jquery.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('#deploy').click(function () {
                $('#deployFieldset').toggle('normal');
            });
        });
    </script>
</head>
<body>
<div style="text-align: right;padding: 2px 1em 2px">
    <div id="message" class="alert" style="display:inline;"><b>提示：</b>点击xml或者png链接可以查看具体内容！</div>
    <a id='deploy' class="btn btn-primary" href='#'><i class="icon-plus"></i>部署流程</a>
    <a id='redeploy' class="btn btn-primary" href='${ctx }/workflow/redeploy/all'><i class="icon-refresh"></i>重新部署流程</a>
</div>
<fieldset id="deployFieldset" style="display: none">
    <legend>部署新流程</legend>
    <span class="alert alert-info"><b>支持文件格式：</b>zip、bar、bpmn、bpmn20.xml</span>

    <form action="${ctx }/workflow/deploy" method="post" enctype="multipart/form-data" style="margin-top:1em;">
        <input type="file" name="file"/>
        <input type="submit" value="Submit" class="btn"/>
    </form>
    <hr class="soften"/>
</fieldset>
<table width="100%" class="table table-bordered table-hover table-condensed">
    <thead>
    <tr>
        <th>ProcessDefinitionId</th>
        <th>DeploymentId</th>
        <th>名称</th>
        <th>KEY</th>
        <th>版本号</th>
        <th>XML</th>
        <th>图片</th>
        <th>部署时间</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${objects }" var="object">
        <c:set var="process" value="${object[0] }"/>
        <c:set var="deployment" value="${object[1] }"/>
        <tr>
            <td>${process.id }</td>
            <td>${process.deploymentId }</td>
            <td>${process.name }</td>
            <td>${process.key }</td>
            <td>${process.version }</td>
            <td><a target="_blank"
                   href='${ctx }/workflow/resource/deployment?deploymentId=${process.deploymentId}&resourceName=${process.resourceName }'>${process.resourceName }</a>
            </td>
            <td><a target="_blank"
                   href='${ctx }/workflow/resource/deployment?deploymentId=${process.deploymentId}&resourceName=${process.diagramResourceName }'>${process.diagramResourceName }</a>
            </td>
            <td>${deployment.deploymentTime }</td>
            <td><a href='${ctx }/workflow/process/delete?deploymentId=${process.deploymentId}'>删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>