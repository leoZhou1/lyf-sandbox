<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        body {
            width: 960px;
            margin: 5px auto;
            border: 20px solid #CCC;
            padding: 5px
        }

        form {
            margin-left: 30px
        }

        ul {
            margin: 0;
            padding: 0
        }

        h1, h2, h3 {
            margin-top: 5px;
            color: #666
        }

        .ipt-args {
            list-style: none;
        }

        .ipt-args span {
            display: block;
            float: left;
            margin: 2px;
            width: 400px
        }

        .ipt-args .key {
            width: 150px;
            text-align: right;
        }

        .ipt-args .key input{
            width: 130px;
            height: 30px;
            padding: 3px 5px
        }

        .ipt-args .value {
            word-break: break-all;
        }

        .ipt-args .value input, select {
            width: 400px;
            height: 30px;
            padding: 3px 5px
        }

        .all-apis {
            margin-left: 50px;
        }

        .clear {
            clear: both;
            font-size: 0px;
            height: 0px;
            line-height: 0;
        }

        .clearfix:after {
            content: '\20';
            display: block;
            clear: both;
            visibility: hidden;
            line-height: 0;
            height: 0;
        }

        .clearfix {
            display: block;
            zoom: 1;
        }

        html[xmlns] .clearfix {
            display: block;
        }

        * html .clearfix {
            height: 1%;
        }
    </style>
    <script type="text/javascript" src="${request.contextPath}/static/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        var webroot = '${request.contextPath}';

        function change_project(){
            $("#paramsUl").html("");
            var option = $("select>option:selected");
            var method = option.text();
            if(method!=null && method!=''){
                console.log("/interface/"+option.attr("interfaceId"));

                $.ajax({
                    url:webroot+"/interface/"+option.attr("interfaceId"),
                    type:"get",
                    dataType:"json",
                    success:function(data){
                        var paramStr = data.params;
                        var params = paramStr.split("&");
                        for(var i=0; i<params.length; i++){
                            var attrbuteArray = params[i].split("=");
                            $("#paramsUl").append('<li class="ipt-args clearfix">'+
                                    '<span class="key">'+attrbuteArray[0]+': </span>'+
                                    '<span class="value">'+
                                    '<input name="'+attrbuteArray[0]+'" value="'+attrbuteArray[1]+'">'+
                                    '</span></li>');
                        }
                    }
                });
            }
        }

        function change_project() {
            $("#interfaceCate").html("<option>请选择分类</option>");
            var option = $("#project>option:selected");
            var projectValue = option.val();
            if(projectValue!=null && projectValue!=''){
                $.ajax({
                    url:webroot+"/interfaceCate/"+projectValue,
                    type:"get",
                    dataType:"json",
                    success:function(data){
                        for(var i=0; i<data.length; i++){
                            $("#interfaceCate").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>");
                        }
                    }
                });
            }
        }

        function addParam(){
            var option = '<li class="ipt-args clearfix">\n' +
                    '            <span class="key"><input type="text" value="">&nbsp;=</span>\n' +
                    '            <span class="value">\n' +
                    '\t\t\t<input type="text" value="">\n' +
                    '\t\t\t</span><input type="button" value="删除" onclick="deleteParam(this)"/>\n' +
                    '        </li>';
            $("#paramsUl").append(option);
        }

        function deleteParam(objEle){
            var li = $(objEle).parent();
            console.log(li.html());
            li.remove();
        }

        function validateForm(){
            var paramsStr = '';
            $("#paramsUl").find("li").each(function (i,obj) {
                var key = $(obj).find(".key").find("input").val();
                var value = $(obj).find(".value").find("input").val();
                paramsStr = paramsStr + "&" + key + "=" + value;
            });
            paramsStr = paramsStr.substr(1,paramsStr.length);
            $("#params").val(paramsStr);
            console.log(paramsStr);
            $("form").submit();
        }
        
        function initValidate() {
            $("#interfaceForm").validate({
                rules: {

                }
            });
        }

    </script>
</head>

<body>
<h1 style="text-align:center;">添加接口</h1>
<form action="${request.contextPath}/interface/" id="interfaceForm" method="POST">
	<ul>
        <li class="ipt-args clearfix">
            <span class="key">项目: </span>
            <span class="value">
            <select name="projectId" id="project" onchange="change_project()">
            	<option>请选择项目</option>
                <#list projectList as pro>
                    <option value="${pro.id}">${pro.name}</option>
                </#list>
            </select></span>
        </li>
        <li class=" ipt-args clearfix">
            <span class="key">分类: </span>
            <span class="value">
            <select name="interfaceCateId" id="interfaceCate">
            	<option>请选择分类</option>
            </select></span>
        </li>
        <li class=" ipt-args clearfix">
            <span class="key">httpMethod: </span>
            <span class="value">
            <select name="httpMethod" >
            	<option value="0">GET</option>
                <option value="1">POST</option>
                <#--<option value="2">POST/GET</option>-->
            </select></span>
        </li>
        <li class=" ipt-args clearfix">
            <span class="key">接口名称: </span>
            <span class="value">
                <input name="name" type="text" value="">
            </span>
        </li>
        <li class=" ipt-args clearfix">
            <span class="key">接口路径: </span>
            <span class="value">
                <input name="interfaceUrl" type="text" value="">
            </span>
        </li>
    </ul>
    <input type="hidden" value="" name="params" id="params"/>
    <h2>应用级参数：</h2>&nbsp;&nbsp;&nbsp;<input type="button" value="添加参数" onclick="addParam()"/><br/><br/>
    <ul id="paramsUl">
        <li class="ipt-args clearfix">
            <span class="key"><input type="text" value="">&nbsp;=</span>
            <span class="value">
			<input type="text" value="">
			</span><input type="button" value="删除" onclick="deleteParam(this)"/>
        </li>
    </ul>
    <input type="button" onclick="javascript:validateForm();" value="提交" style="width:400px;height:40px;background-color:gray;margin:20px 120px">

</form>


</body>
</html>