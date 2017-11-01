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
            width: 120px;
            text-align: right;
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
    </script>
</head>

<body>
<h1 style="text-align:center;">服务端API单元测试-沙盒系统</h1>
<div style="height: 40px;">

    <input type="button" value="添加接口" onclick="toAdd();"/>
</div>
<div style="width: 150px;float:left;">
    <#list projectList as project>
        <ul>
            <br/>
            <b style="margin: 3 10px;">
                <a href="javascript:void(0);" onclick="getInterfaceList(${project.id},null)">${project.name}</a>
            </b>
            <#list project.interfaceCateList as cate>
                <li class="ipt-args clearfix" style="margin:5 30px;">
                    <a href="javascript:void(0);" onclick="getInterfaceList(null,${cate.id})">${cate.name}</a>
                </li>
            </#list>
        </ul>

    </#list>

</div>
<div style="width: 800px;float:left;">

    <form action="${request.contextPath}/api" target="unitarget" method="POST" id="interfaceForm">
        <input type="hidden" value="POST" name="httpMethodType" id="httpMethod"/>
        <ul>
            <li class="ipt-args clearfix">
                <span class="key">method: </span>
                <span class="value">
                <select name="method" id="method" onchange="change_method()">
                <#--<#list interfaceList as interface>
                    <option value="${interface.id}">${interface.interfaceUrl}（${interface.name}）</option>
                </#list>-->
                </select>
                </span><input type="button" value="修改" onclick="toEdit();"/>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">系统环境: </span>
                <span class="value">
                <select name="env" id="env">
                    <option value=''>请选择系统环境</option>

                </select>
                </span>
            </li>
        </ul>
        <h2>应用级参数：</h2>
        <ul id="paramsUl">
        </ul>
        <#--<h2>系统级参数：</h2>
        <ul>
            <li class=" ipt-args clearfix
                    ">
                    <span class="key">version: </span>
                    <span class="value"><input name="version" value="420"></span>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">platform: </span>
                <span class="value"><input name="platform" value="android"></span>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">token: </span>
                <span class="value"><input name="token"
                                           value="b30d05a11bc5a4a3ccf2bd05a11bc5a4a3cce3ef6380faef400ef0981"></span>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">uuid: </span>
                <span class="value"><input name="uuid" value="0983722"></span>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">sign: </span>
                <span class="value"><input name="sign" value="2d2072ee0d3921cc185d04c1aa97a684"></span>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">session: </span>
                <span class="value"><input name="session" value="APP_afced5c799fa84a27da456bd3efe3b1624479980"></span>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">currentarea: </span>
                <span class="value"><input name="currentarea" value="21"></span>
            </li>
            <li class="ipt-args clearfix">
                <span class="key">明码: </span>
                <span class="value mingma">barcode=¤tarea=21&amp;method=cart.add&amp;number=2&amp;platform=android&amp;session=APP_afced5c799fa84a27da456bd3efe3b1624479980&amp;sku_id=1162&amp;token=b30d05a11bc5a4a3ccf2bd05a11bc5a4a3cce3ef6380faef400ef0981&amp;type=product&amp;use_point=0&amp;uuid=0983722&amp;version=420&amp;sign=2d2072ee0d3921cc185d04c1aa97a684</span>
            </li>
        </ul>-->


        <input type="button" onclick="submitValidate();" name="" value="提交" style="width:400px;height:40px;background-color:gray;margin:20px 120px">

    </form>
</div>
<script>
    function getInterfaceList(projectId,cateId) {
        $("#method").html("");
        $("#env").html("");
        var url = webroot + "/interface/getBySelective";
        var data;
        if(cateId!=null && cateId!=''){
            data = {"interfaceCateId":cateId};
        }else{
            data = {"projectId":projectId};
        }
        $.ajax({
            url:url,
            data:data,
            type:"GET",
            dataType:"json",
            success:function (data) {
                if(data.length>0){
                    for(var i = 0; i<data.length; i++){
                        $("#method").append("<option value='"+data[i].id+"'>"+data[i].interfaceUrl+"（"+data[i].name+"）"+"</option>")
                    }

                    for(var i = 0; i<data[0].project.projectEnvList.length; i++){
                        $("#env").append('<option value="'+data[0].project.projectEnvList[i].id+'">'+data[0].project.projectEnvList[i].envName+'</option>');
                    }
                    change_method();
                }else{
                    $("#paramsUl").html("");
                }
            }
        });
    }
    function submitValidate() {
        var interfaceId = $("#method>option:selected").val();
        var envId = $("#env>option:selected").val();
        if(interfaceId==null || interfaceId==''){
            alert("请选择方法");
            return false;
        }
        var envId = $("#env>option:selected").val();
        if(envId==null || envId==''){
            alert("请选择系统环境");
            return false;
        }
        console.log(interfaceId+'=============='+envId)
        $("#id").val(interfaceId);
        $("#interfaceForm").submit();
    }
    $(function(){
        createMingMa();
    });
    
    function createMingMa(){
    	var paramStr = "";
        $("form").find("input[type!=button]").each(function (i,obj) {
            $(obj).attr("name");
            paramStr = paramStr + "&"+$(obj).attr("name")+"="+$(obj).val();
        });
        paramStr = paramStr.substr(1,paramStr.length);
        $(".mingma").html(paramStr);
    }
    
    function change_method(){
    	$("#paramsUl").html("");
//    	$("#env").html("<option value=''>请选择系统环境</option>");
    	var option = $("#method>option:selected");
    	var method = option.val();
    	if(method!=null && method!=''){

    		$.ajax({
    			url:webroot+"/interface/"+option.val(),
    			type:"get",
    			dataType:"json",
    			success:function(data){
    				var paramStr = data.params;
    				var projectEnvList = data.project.projectEnvList;
	    			var params = paramStr.split("&");
	    			for(var i=0; i<params.length; i++){
	    				var attrbuteArray = params[i].split("=");
	    				$("#paramsUl").append('<li class="ipt-args clearfix">'+
						            '<span class="key">'+attrbuteArray[0]+': </span>'+
						            '<span class="value">'+
									'<input name="'+attrbuteArray[0]+'" value="'+attrbuteArray[1]+'">'+
									'</span></li>');
	    			}
	    			/*for(var i = 0; i<projectEnvList.length; i++){
	    			    $("#env").append('<option value="'+projectEnvList[i].id+'">'+projectEnvList[i].envName+'</option>');
                    }*/
	    			var httpMethod = "GET";
                    if(data.httpMethod==1){
                        httpMethod="POST"
                    }
	    			$("#httpMethod").val(httpMethod);
	    			createMingMa();
    			}
    		});
    	}
    }

    function toEdit() {
        var interfaceId = $("#method>option:selected").val();
        console.log("methodId:"+interfaceId)
        if(interfaceId!=null && interfaceId!=''){
            window.location.href = "/interface/toEdit/"+interfaceId;
        }else{
            alert("请选择方法！");
        }
    }
    function toAdd() {
        window.location.href = "/interface/toAdd/";
    }
</script>
</body>
</html>