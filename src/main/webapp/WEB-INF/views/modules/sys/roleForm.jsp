<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

<html>
<head>
    <title>角色管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        var validateForm;
        function doSubmit() {//回调函数，在编辑和保存动作时，供openDialog调用提交表单。
            if (validateForm.form()) {
                $("#inputForm").submit();
                return true;
            }
            return false;
        }

        $(document).ready(function () {
            $("#name").focus();
            //设置了远程验证，在初始化时必须预先调用一次。
            validateForm = $("#inputForm").validate({
                submitHandler: function (form) {
                    loading('正在提交，请稍等...');
                    form.submit();
                },
                errorContainer: "#messageBox",
                errorPlacement: function (error, element) {
                    $("#messageBox").text("输入有误，请先更正。");
                    if (element.is(":checkbox") || element.is(":radio") || element.parent().is(".input-append")) {
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
<form:form id="inputForm" modelAttribute="role" action="${ctx}/sys/role/save" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <table class="table">
        <tbody>
        <tr>
            <td class="active"><label class="pull-right"><span style="color: red; ">*</span>角色名称:</label></td>
            <td><form:input path="name" htmlEscape="false" maxlength="50" class="form-control required"/></td>
        </tr>
        <tr>
            <td class="active"><label class="pull-right"><span style="color: red; ">*</span>角色标记:</label></td>
            <td><form:input path="enname" htmlEscape="false" maxlength="50" class="form-control required"/></td>
        </tr>
        <tr>
            <td class="active"><label class="pull-right">描述:</label></td>
            <td colspan="3"><form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="form-control"/></td>
        </tr>
        </tbody>
    </table>
</form:form>
</body>
</html>