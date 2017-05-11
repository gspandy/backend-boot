<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>栏目管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		var validateForm;
		function doSubmit(){//回调函数，在编辑和保存动作时，供openDialog调用提交表单。
			if(validateForm.form()){
				$("#inputForm").submit();
				return true;
			}
			return false;
		}

		$(document).ready(function() {
			$("#name").focus();
            validateForm = $("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<form:form id="inputForm" modelAttribute="cmsCategory" action="${ctx}/cms/category/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
        <div class="row m-t">
            <div class="col-sm-6">
                <label class="control-label">归属机构:</label>
                <div class="controls">
                    <sys:treeselect id="officeId" name="officeId" value="${cmsCategory.officeId}" labelName="officeName" labelValue="${cmsCategory.officeName}"
                                    title="机构" url="/sys/office/treeData" cssClass="form-control required"/>
                </div>
            </div>
            <div class="col-sm-6">
                <label class="control-label">上级栏目:</label>
                <div class="controls">
                    <sys:treeselect id="parentId" name="parentId" value="${cmsCategory.parentId}" labelName="parentName" labelValue="${cmsCategory.parentName}"
                                    title="栏目" url="/cms/category/treeData" extId="${cmsCategory.id}" cssClass="form-control required"/>
                </div>
            </div>
        </div>
		<div class="control-group">
			<label class="control-label">栏目模型:</label>
			<div class="controls">
				<form:select path="module" cssClass="form-control">
					<form:option value="" label="公共模型"/>
					<form:options items="${fns:getDictList('cms_module')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">栏目名称:</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="50" class="form-control required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">缩略图:</label>
			<div class="controls">
				<form:hidden path="image" htmlEscape="false" maxlength="255"/>
                <img src="<c:if test="${empty cmsCategory.image}">${ctxStatic}/static/app/image/default.jpg</c:if>
                <c:if test="${not empty cmsCategory.image}">${fns:getFileAccessPath()}/${cmsCategory.image}</c:if>"
                     id="thumbImg" style="max-width: 100px; max-height: 100px; line-height: 20px;"/>
                <input type="file" class="default" name="upload" onchange="imgUpload(this.value);" id="fileId" style="border: none; padding: 0;"/>
            </div>
		</div>
		<div class="control-group">
			<label class="control-label">链接:</label>
			<div class="controls">
				<form:input path="href" htmlEscape="false" maxlength="200" cssClass="form-control"/>
				<span class="help-inline">栏目超链接地址，优先级“高”</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">目标:</label>
			<div class="controls">
				<form:input path="target" htmlEscape="false" maxlength="200" cssClass="form-control"/>
				<span class="help-inline">栏目超链接打开的目标窗口，新窗口打开，请填写：“_blank”</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">描述:</label>
			<div class="controls">
				<form:textarea path="description" htmlEscape="false" rows="4" maxlength="200" cssClass="form-control"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">关键字:</label>
			<div class="controls">
				<form:input path="keywords" htmlEscape="false" maxlength="200" cssClass="form-control"/>
				<span class="help-inline">填写描述及关键字，有助于搜索引擎优化</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">排序:</label>
			<div class="controls">
				<form:input path="sort" htmlEscape="false" maxlength="11" class="form-control required digits"/>
				<span class="help-inline">栏目的排列次序</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">在导航中显示:</label>
			<div class="controls">
				<form:radiobuttons path="inMenu" items="${fns:getDictList('show_hide')}" itemLabel="label" itemValue="value"
								   htmlEscape="false" class="i-checks required"/>
				<span class="help-inline">是否在导航中显示该栏目</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">在分类页中显示列表:</label>
			<div class="controls">
				<form:radiobuttons path="inList" items="${fns:getDictList('show_hide')}" itemLabel="label"
                                   itemValue="value" htmlEscape="false" class="i-checks required"/>
				<span class="help-inline">是否在分类页中显示该栏目的文章列表</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" title="默认展现方式：有子栏目显示栏目列表，无子栏目显示内容列表。">展现方式:</label>
			<div class="controls">
				<form:radiobuttons path="showModes" items="${fns:getDictList('cms_show_modes')}" itemLabel="label"
                                   itemValue="value" htmlEscape="false" class="i-checks required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">是否允许评论:</label>
			<div class="controls">
				<form:radiobuttons path="allowComment" items="${fns:getDictList('yes_no')}" itemLabel="label"
                                   itemValue="value" htmlEscape="false" class="i-checks required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">是否需要审核:</label>
			<div class="controls">
				<form:radiobuttons path="isAudit" items="${fns:getDictList('yes_no')}" itemLabel="label"
                                   itemValue="value" htmlEscape="false" class="i-checks required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">自定义列表视图:</label>
			<div class="controls">
                <form:select path="customListView" cssClass="form-control">
                    <form:option value="" label="默认视图"/>
                    <form:options items="${listViewList}" htmlEscape="false"/>
                </form:select>
                <span class="help-inline">自定义列表视图名称必须以"${category_DEFAULT_TEMPLATE}"开始</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">自定义内容视图:</label>
			<div class="controls">
                <form:select path="customContentView" cssClass="form-control">
                    <form:option value="" label="默认视图"/>
                    <form:options items="${contentViewList}" htmlEscape="false"/>
                </form:select>
                <span class="help-inline">自定义内容视图名称必须以"${article_DEFAULT_TEMPLATE}"开始</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">自定义视图参数:</label>
			<div class="controls">
                <form:input path="viewConfig" htmlEscape="true" cssClass="form-control"/>
                <span class="help-inline">视图参数例如: {count:2, title_show:"yes"}</span>
			</div>
		</div>
	</form:form>
</body>
</html>