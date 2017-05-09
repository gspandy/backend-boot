<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>业务表管理</title>
	<meta name="decorator" content="default"/>
	<script>
        //打开生成代码配置表单
        function genCodeForm(id) {
            if(!id){
                var $contentTable = $("#contentTable");
                var size = $contentTable.find("tbody tr td input.i-checks:checked").size();
                if (size == 0) {
                    top.layer.alert('请至少选择一条数据!', {icon: 0, title: '警告'});
                    return;
                }
                if (size > 1) {
                    top.layer.alert('只能选择一条数据!', {icon: 0, title: '警告'});
                    return;
                }
                id = $contentTable.find("tbody tr td input.i-checks:checkbox:checked").attr("id");
            }
            openDialog("生成代码", "${ctx}/gen/genTable/genCodeForm?id=" + id, "800px", "650px");
        }
	</script>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="ibox">
        <div class="ibox-title">
            <h5>业务表列表</h5>
            <div class="ibox-tools"></div>
        </div>
        <div class="ibox-content">
            <sys:message content="${message}"/>
            <!-- 查询条件 -->
            <div class="row">
                <div class="col-sm-12">
                    <form:form id="searchForm" modelAttribute="genTable" action="${ctx}/gen/genTable/" method="post" class="form-inline">
                        <input id="pageNum" name="pageNum" type="hidden" value="${page.pageNum}"/>
                        <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                        <table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
                        <div class="form-group">
                            <span>表名：</span>
                            <form:input path="name" htmlEscape="false" maxlength="50" class="form-control"/>
                            <span>说明：</span>
                            <form:input path="comments" htmlEscape="false" maxlength="50" class="form-control"/>
                            <button  class="btn btn-primary btn-outline btn-sm " onclick="searchAll()" ><i class="fa fa-search"></i> 查询</button>
                            <button  class="btn btn-primary btn-outline btn-sm " onclick="resetAll()" ><i class="fa fa-refresh"></i> 重置</button>
                        </div>
                    </form:form>
                    <br/>
                </div>
            </div>

            <!-- 工具栏 -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="pull-left">
                        <shiro:hasPermission name="gen:genTable:edit">
                            <table:addRow url="${ctx}/gen/genTable/form" title="业务表" width="1200px" height="650px"/><!-- 增加按钮 -->
                            <table:delRow url="${ctx}/gen/genTable/delete" id="contentTable"/><!-- 删除按钮 -->
                        </shiro:hasPermission>
                        <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="left" onclick="sortOrRefresh()" title="刷新">
                            <i class="glyphicon glyphicon-repeat"></i> 刷新
                        </button>
                    </div>
                </div>
            </div>

            <!-- 数据表 -->
            <table:check id="contentTable"/>
            <table id="contentTable" class="table table-striped table-bordered table-hover table-condensed dataTables-example dataTable no-footer">
                <thead>
                <tr>
                    <th><input type="checkbox" class="i-checks"></th>
                    <th class="sort-column name">表名</th>
                    <th>说明</th>
                    <th class="sort-column class_name">类名</th>
                    <th class="sort-column parent_table">父表</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${page.list}" var="bean">
                    <tr>
                        <td><input type="checkbox" id="${bean.id}" class="i-checks"></td>
                        <td><a href="#" onclick="openDialogView('查看', '${ctx}/gen/genTable/form?id=${bean.id}','1200px', '650px')">
                                ${bean.name}</a>
                        </td>
                        <td>${bean.comments}</td>
                        <td>${bean.className}</td>
                        <td title="点击查询子表">
                            <a href="#" onclick="$('#parentTable').val('${bean.parentTable}');$('#searchForm').submit();">
                               ${bean.parentTable}</a>
                        </td>
                        <shiro:hasPermission name="sys:user:edit">
                        <td>
                            <a href="#" onclick="genCodeForm('${bean.id}')" class="btn btn-link btn-xs">
                                <i class="fa fa-folder-o"></i> 生成代码
                            </a>
                            <a href="#"
                               onclick="openDialog('修改', '${ctx}/gen/genTable/form?id=${bean.id}','1200px', '650px')"
                               class="btn btn-link btn-xs"><i class="fa fa-edit"></i> 修改
                            </a>
                            <a href="#"
                               onclick="return confirmx('确认要删除该业务表吗？', '${ctx}/gen/genTable/delete?ids=${bean.id}')"
                               class="btn btn-link btn-xs"><i class="fa fa-trash"></i> 删除
                            </a>
                        </td>
                        </shiro:hasPermission>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <table:page page="${page}"/>
        </div>
    </div>
</div>

</body>
</html>
