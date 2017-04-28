<%@ page contentType="text/html;charset=UTF-8" %>
<link rel="stylesheet" href="${ctxStatic}/static/plugins/wangEditor/css/wangEditor.min.css">
<script type="text/javascript" src="${ctxStatic}/static/plugins/wangEditor/js/wangEditor.min.js"></script>

<script type="text/javascript">
    (function($){
        $.fn.extend({
            wangEditor:function(option){
                var options = typeof option == 'object' && option;
                var editor = new wangEditor($(this));
                editor.config.menus = $.map(wangEditor.config.menus, function(item, key) {
                    if (item === 'location') {
                        return null;
                    }
                    return item;
                });

                // 上传图片（举例）
                editor.config.uploadImgUrl = '../../editorUpload';
                editor.config.uploadImgFileName = 'file';
                editor.create();
            }
        });

    })(jQuery);
</script>