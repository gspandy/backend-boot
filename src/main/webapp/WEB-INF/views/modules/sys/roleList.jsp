<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>角色管理</title>
    <meta name="decorator" content="default"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated zoomIn">
    <div class="ibox">
        <div class="ibox-title">
            <h5>角色列表 </h5>
            <div class="ibox-tools">
            </div>
        </div>
        <div class="ibox-content">
            <sys:message content="${message}"/>

            <form:form id="searchForm" modelAttribute="role" action="${ctx}/sys/role/list" method="post" class="form-inline">
            </form:form>
            <!-- 工具栏 -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="pull-left">
                        <shiro:hasPermission name="sys:role:edit">
                            <table:addRow url="${ctx}/sys/role/form" title="角色"/><!-- 增加按钮 -->
                            <table:delRow url="${ctx}/sys/role/delete" id="contentTable"/><!-- 删除按钮 -->
                        </shiro:hasPermission>
                        <button class="btn btn-white btn-sm " data-toggle="tooltip" data-placement="left"
                                onclick="sortOrRefresh()" title="刷新"><i class="glyphicon glyphicon-repeat"></i> 刷新
                        </button>
                    </div>
                </div>
            </div>

            <!-- 数据表 -->
            <table:check id="contentTable"/>
            <table id="contentTable" class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th><input type="checkbox" class="i-checks"></th>
                    <th>角色名称</th>
                    <th>角色标记</th>
                    <th>描述</th>
                    <th>创建人</th>
                    <th>创建时间</th>
                    <shiro:hasPermission name="sys:role:edit">
                    <th>操作</th>
                    </shiro:hasPermission>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${roleList}" var="bean">
                    <tr>
                        <td><input type="checkbox" id="${bean.id}" class="i-checks"></td>
                        <td><a href="#" onclick="openDialogView('查看角色', '${ctx}/sys/role/form?id=${bean.id}','800px', '500px')">
                                ${bean.name}</a></td>
                        <td>${bean.enname}</td>
                        <td>${bean.remarks}</td>
                        <td>${fns:getUserById(bean.createBy).name}</td>
                        <td>${bean.createDate}</td>
                        <shiro:hasPermission name="sys:role:edit">
                        <td>
                                <a href="#"
                                   onclick="openDialog('修改角色', '${ctx}/sys/role/form?id=${bean.id}','800px', '500px')"
                                   class="btn btn-link btn-xs"><i class="fa fa-edit"></i> 修改</a>
                                <a href="#"
                                   onclick="return confirmx('确认要删除该角色吗？', '${ctx}/sys/role/delete?ids=${bean.id}')"
                                   class="btn  btn-link btn-xs"><i class="fa fa-trash"></i> 删除</a>
                                <a href="#"
                                   onclick="openDialog('权限设置', '${ctx}/sys/role/auth?id=${bean.id}','350px', '700px')"
                                   class="btn btn-link btn-xs"><i class="fa fa-edit"></i> 权限设置</a>
                                <a href="#"
                                   onclick="openDialogView('分配用户', '${ctx}/sys/role/assign?id=${bean.id}','800px', '600px')"
                                   class="btn  btn-link btn-xs"><i class="glyphicon glyphicon-plus"></i> 分配用户</a>
                        </td>
                        </shiro:hasPermission>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>

