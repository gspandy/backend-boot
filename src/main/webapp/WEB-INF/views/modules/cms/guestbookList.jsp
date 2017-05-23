<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>留言管理</title>
    <meta name="decorator" content="default"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="ibox">
        <div class="ibox-title">
            <h5>留言列表</h5>
            <div class="ibox-tools"></div>
        </div>
        <div class="ibox-content">
            <sys:message content="${message}"/>
            <!-- 查询条件 -->
            <div class="row">
                <div class="col-sm-12">
                    <form:form id="searchForm" modelAttribute="guestbook" action="${ctx}/cms/guestbook/" method="post" class="form-inline">
                        <input id="pageNum" name="pageNum" type="hidden" value="${page.pageNum}"/>
                        <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                        <table:sortColumn id="orderBy" name="orderBy" value="${guestbook.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
                        <div class="form-group">
                            <span>分类：</span>
                            <form:select id="type" path="type" class="form-control">
                                <form:option value="" label=""/>
                                <form:options items="${fns:getDictList('cms_guestbook')}" htmlEscape="false" itemValue="value"/>
                            </form:select>
                            <span>内容：</span>
                            <form:input path="content" htmlEscape="false" maxlength="50" class="form-control"/>
                            <span>状态：</span>
                            <form:radiobuttons onclick="$('#searchForm').submit();" path="delFlag" items="${fns:getDictList('del_flag')}"
                                               itemLabel="label" itemValue="value" htmlEscape="false"/>
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
                        <shiro:hasPermission name="sys:user:edit">
                            <table:addRow url="${ctx}/cms/guestbook/form" title="用户" width="800px" height="650px"/><!-- 增加按钮 -->
                            <table:delRow url="${ctx}/cms/guestbook/delete" id="contentTable"/><!-- 删除按钮 -->
                        </shiro:hasPermission>
                        <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="left" onclick="sortOrRefresh()" title="刷新">
                            <i class="glyphicon glyphicon-repeat"></i> 刷新
                        </button>
                    </div>
                </div>
            </div>

            <!-- 表数据 -->
            <table:check id="contentTable"/>
            <table id="contentTable" class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th><input type="checkbox" class="i-checks"></th>
                    <th>留言分类</th>
                    <th>留言内容</th>
                    <th>留言人</th>
                    <th>留言时间</th>
                    <th>回复人</th>
                    <th>回复内容</th>
                    <th>回复时间</th>
                    <shiro:hasPermission name="cms:guestbook:edit">
                        <th>操作</th>
                    </shiro:hasPermission>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${page.list}" var="bean">
                    <tr>
                        <td><input type="checkbox" id="${bean.id}" class="i-checks"></td>
                        <td>${fns:getDictLabel(bean.type, 'cms_guestbook', '无分类')}</td>
                        <td><a href="#" onclick="openDialogView('查看', '${ctx}/cms/guestbook/form?id=${bean.id}')">
                                ${fns:abbr(bean.content,40)}</a></td>
                        <td>${bean.name}</td>
                        <td><fmt:formatDate value="${bean.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${bean.reUserName}</td>
                        <td>${fns:abbr(bean.reContent,40)}</td>
                        <td><fmt:formatDate value="${bean.reDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <shiro:hasPermission name="cms:guestbook:edit">
                        <td>
                            <a href="#" onclick="openDialog('修改', '${ctx}/cms/guestbook/form?id=${bean.id}')"><i class="fa fa-edit"></i>审核</a>
                            <a href="#" onclick="return confirmx('确认要删除该数据吗？', '${ctx}/cms/guestbook/delete?ids=${bean.id}')"><i class="fa fa-trash"></i>删除</a>
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