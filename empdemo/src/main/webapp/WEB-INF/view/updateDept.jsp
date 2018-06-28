<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>updateDetp</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/css/style.css">
</head>
<body>
<div class="container">
    <div class="row head"></div>
    <div class="row body">
        <form class="form-horizontal" id="updateDeptForm" action="${pageContext.request.contextPath}/dept/updateDept" method="post">
            <input type="hidden" value="${id}" name="id">
            <div class="form-group">
                <label class="col-sm-2 control-label">部门名称</label>
                <div class="col-sm-6">
                    <select class="form-control" name="dname">
                        <c:forEach items="${deptList}" var="deptlist">
                            <option selected="selected" value="${deptlist.dname}">${deptlist.dname}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">工作地点</label>
                <div class="col-sm-6">
                    <select class="form-control" name="location">
                        <c:forEach items="${deptList}" var="deptlist">
                            <option selected="selected" value="${deptlist.location}">${deptlist.location}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-default sub">确认</button>
                </div>
            </div>
        </form>
    </div>
    <div class="row foot"></div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/r/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/r/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".sub").click(function () {
            $("#updateDeptForm").submit();
        });
    });
</script>
</body>
</html>