<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>addDept</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/css/style.css">
</head>
<body>
<div class="container">
    <div class="row head"></div>
    <div class="row body">
        <form class="form-horizontal" id="addDeptForm" action="${pageContext.request.contextPath}/dept/addDept" method="post">
            <div class="form-group">
                <label for="dname" class="col-sm-2 control-label">部门名称</label>
                <div class="col-sm-6 dname">
                    <input type="text" class="form-control" id="dname" name="dname">
                </div>
            </div>
            <div class="form-group">
                <label for="location" class="col-sm-2 control-label">工作地点</label>
                <div class="col-sm-6 location">
                    <input type="text" class="form-control" id="location" name="location" >
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
        var isDname = false;
        var isLocation = false;
        $("#dname").blur(function () {
             var dname = $("#dname").val();
             if(dname != null){
                 isDname = true;
             }
        });
        $("#location").blur(function () {
            var location = $("#location").val();
            if(location != null){
                isLocation = true;
            }
        });
        $(".sub").click(function () {
            if(isDname && isLocation){
                $("#addDeptForm").submit();

            }
        });
    });
</script>
</body>
</html>