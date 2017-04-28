<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>系统配置管理</title>
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
            //设置了远程验证，在初始化时必须预先调用一次。
            var $inputForm = $("#inputForm");
            validateForm = $inputForm.validate({
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

<div class="wrapper wrapper-content">
    <div class="col-sm-10">
        <form:form id="inputForm" modelAttribute="sysConfig" action="${ctx}/sys/config/save" method="post"
                   class="form-horizontal">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <i class="fa fa-envelope"></i> 系统邮箱设置
                    <div class="pull-right">
                        <a href="#" onclick="doSubmit()" style="color:white">
                            <i style="font-size: 20px" class="fa fa-save"></i>
                        </a>
                    </div>
                </div>
                <div class="panel-body">
                    <sys:message content="${message}"/>
                    <fieldset>
                        <legend class="m-t-md">邮箱设置</legend>
                        <div class="control-group">
                            <label class="control-label">邮箱服务器地址:</label>
                            <div class="controls">
                                <form:input path="smtp" htmlEscape="false" maxlength="64" class="form-control"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">邮箱服务器端口:</label>
                            <div class="controls">
                                <form:input path="port" htmlEscape="false" maxlength="64" class="form-control"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">系统邮箱地址:</label>
                            <div class="controls">
                                <form:input path="mailName" htmlEscape="false" maxlength="64" class="form-control"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">系统邮箱密码:</label>
                            <div class="controls">
                                <form:input path="mailPassword" htmlEscape="false" maxlength="64" class="form-control"/>
                            </div>
                        </div>
                        <legend class="m-t-md">短信设置</legend>
                        <div class="control-group">
                            <label class="control-label">短信用户名:</label>
                            <div class="controls">
                                <form:input path="smsName" htmlEscape="false" maxlength="64" class="form-control"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">短信密码:</label>
                            <div class="controls">
                                <form:input path="smsPassword" htmlEscape="false" maxlength="64" class="form-control"/>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>