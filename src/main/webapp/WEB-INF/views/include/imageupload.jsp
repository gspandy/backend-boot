<%@ page contentType="text/html;charset=UTF-8" %>
<script src="${ctxStatic}/static/plugins/ajaxfileupload.js"></script>

<script type="text/javascript">
    function imgUpload(fileName){
        $.ajaxFileUpload({
            url: '${ctx}/uploadImage',
            secureuri :false,
            type: 'POST',
            data:  { fileName: fileName},
            fileElementId: 'fileId',
            dataType: 'json',
            success: function(data){
                $("#image_id").val(data);
                var $thumbImg = $("#thumbImg");
                $thumbImg.show();
                $thumbImg.attr("src", "${fns:getFileAccessPath()}/" + data);
            },
            error: function(data,responseText){
                layer.alert('上传失败，请重新上传！');
            }
        });
    }
</script>