<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
    String currentURL = null;
    currentURL = (String) request.getAttribute("javax.servlet.forward.request_uri");
    if (currentURL == null) {
        currentURL = (String) request.getAttribute("javax.servlet.include.request_uri");
    }
    if (currentURL == null) {
        currentURL = request.getRequestURI();
    }
%>
<script type="text/javascript">
    var ctx = '<%=request.getContextPath() %>';
    var reqUri = '<%=currentURL %>';
</script>