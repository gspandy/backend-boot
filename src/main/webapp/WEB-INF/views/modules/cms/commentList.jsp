<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>评论管理</title>
    <meta name="decorator" content="default"/>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="ibox">
        <div class="ibox-title">
            <h5>评论列表</h5>
            <div class="ibox-tools"></div>
        </div>
        <div class="ibox-content">
            <sys:message content="${message}"/>
            <!-- 查询条件 -->
            <div class="row">
                <div class="col-sm-12">
                    <form:form id="searchForm" modelAttribute="cmsComment" action="${ctx}/cms/comment/" method="post" class="form-inline">
                        <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                        <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                        <table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
                        <div class="form-group">
                            <span>文档标题：</span>
                            <form:input path="title" htmlEscape="false" maxlength="50" class="form-control"/>
                            <span>状态：</span>
                            <form:radiobuttons onclick="$('#searchForm').submit();" path="delFlag" items="${fns:getDictList('status')}"
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
                    <th>评论内容</th>
                    <th>文档标题</th>
                    <th>评论人</th>
                    <th>评论IP</th>
                    <th>评论时间</th>
                    <th nowrap="nowrap">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${page.list}" var="bean">
                    <tr>
                        <td><input type="checkbox" id="${bean.id}" class="i-checks"></td>
                        <td><a href="#" onclick="$('#c_${bean.id}').toggle()">
                                ${fns:abbr(fns:replaceHtml(bean.content),40)}</a>
                        </td>
                        <td><a href="${pageContext.request.contextPath}${fns:getFrontPath()}/view-${bean.categoryId}-${bean.contentId}.html"
                               target="_blank">${fns:abbr(bean.title,40)}</a></td>
                        <td>${bean.name}</td>
                        <td>${bean.ip}</td>
                        <td><fmt:formatDate value="${bean.createDate}" type="both"/></td>
                        <td>
                            <shiro:hasPermission name="cms:comment:edit">
                                <a href="#" onclick="return confirmx('确认要删除该数据吗？', '${ctx}/cms/comment/delete?id=${bean.id}')">
                                    <i class="fa fa-trash"></i>删除</a>
                            </shiro:hasPermission>
                        </td>
                    </tr>
                    <tr id="c_${bean.id}" style="background:#fdfdfd;display:none;">
                        <td colspan="7">${fns:replaceHtml(bean.content)}</td>
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