<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>分配角色</title>
    <meta name="decorator" content="blank"/>
    <script type="text/javascript">
        var str="";
        var ids="";
        function getIds() {
            $("#contentTable").find("tbody tr td input.i-checks:checkbox").each(function () {
                if (true == $(this).is(':checked')) {
                    str += $(this).attr("id") + ",";
                }
            });
            if (str.substr(str.length - 1) == ',') {
                ids = str.substr(0, str.length - 1);
            }
            return ids;
        }
    </script>
</head>
<body>
<div class="wrapper wrapper-content">
    <sys:message content="${message}"/>
    <!-- 查询条件 -->
    <div class="row">
        <div class="col-sm-12">
            <form:form id="searchForm" modelAttribute="sysUser" action="${ctx}/sys/role/selectUser" method="post" class="form-inline">
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
                <div class="form-group">
                    <span>用户名：</span>
                    <form:input path="username" htmlEscape="false" maxlength="50" class="form-control"/>
                    <span>姓名：</span>
                    <form:input path="realName" htmlEscape="false" maxlength="50" class="form-control"/>
                    <button  class="btn btn-primary btn-outline btn-sm " onclick="search()" ><i class="fa fa-search"></i> 查询</button>
                    <button  class="btn btn-primary btn-outline btn-sm " onclick="reset()" ><i class="fa fa-refresh"></i> 重置</button>
                </div>
            </form:form>
            <br/>
        </div>
    </div>
    <table:check id="contentTable"/>
    <table id="contentTable" class="table table-striped table-bordered table-hover table-condensed dataTables-example dataTable">
        <thead>
            <tr>
                <th><input type="checkbox" class="i-checks"></th>
                <th>用户名</th>
                <th>姓名</th>
                <th>手机</th>
                <th>用户状态</th>
                <th>用户类型</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.list}" var="bean">
            <tr>
                <td><input type="checkbox" id="${bean.id}" class="i-checks"></td>
                <td>${bean.username}</td>
                <td>${bean.realName}</td>
                <td>${bean.mobile}</td>
                <td>${fns:getDictLabel(bean.status, "sys_user_status", "")}</td>
                <td>${fns:getDictLabel(bean.type, "sys_user_type", "")}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <table:page page="${page}"/>
</div>
</body>
</html>
