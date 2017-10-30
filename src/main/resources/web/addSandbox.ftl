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
<form action="${request.contextPath}/api" target="unitarget" method="POST">
	<ul>
        <li class="ipt-args clearfix">
            <span class="key">method: </span>
            <select name="method" onchange="change_method()">
            	<option>请选择项目</option>
                <#list interfaceList as interface>
                	<option value="${interface.interfaceUrl}" interfaceId="${interface.id}">${interface.interfaceUrl}</option>
                </#list>
            </select>
        </li>
        <li class=" ipt-args clearfix
                ">
                <span class="key">version: </span>
                <span class="value">
				<select name="method" onchange="change_method()">
            	<option>请选择项目</option>
                <#list interfaceList as interface>
                	<option value="${interface.interfaceUrl}" interfaceId="${interface.id}">${interface.interfaceUrl}</option>
                </#list>
            </select>
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
    </ul>
    <h2>系统级参数(cart.add)：</h2>
    <ul>
        <li class="ipt-args clearfix">
            <span class="key">method: </span>
            <select name="method" onchange="change_method()">
            	<option>请选择方法</option>
                <#list interfaceList as interface>
                	<option value="${interface.interfaceUrl}" interfaceId="${interface.id}">${interface.interfaceUrl}</option>
                </#list>
            </select>
        </li>
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
    </ul>

    <h2>应用级参数：</h2>
    <ul id="paramsUl">
        <#-- li class="ipt-args clearfix">
            <span class="key">sessionId: </span>
            <span class="value">
			<input name="sessionId" value="150892388825411">
			</span>
        </li>
        <li class="ipt-args clearfix">
            <span class="key">ut: </span>
            <span class="value">
                <input name="ut" value="">
            </span>
        </li>
        <li class="ipt-args clearfix">
            <span class="key">platformId: </span>
            <span class="value">
			<input name="platformId" value="3">
			</span>
        </li>
        <li class="ipt-args clearfix">
            <span class="key">areaCode: </span>
            <span class="value">
            <input name="areaCode" value="310101">
            </span>
        </li>
        <li class=" ipt-args clearfix">
            <span class="key">receiverId: </span>
            <span class="value">
            <input name="receiverId" value="">
            </span>
        </li>
        <li class=" ipt-args clearfix">
            <span class="key">v: </span>
            <span class="value">
            <input name="v" value="1.2">
            </span>
        </li -->
    </ul>
    <input type="submit" name="" value="提交" style="width:400px;height:40px;background-color:gray;margin:20px 120px">

</form>

<script>
    $(function(){
        createMingMa();
    });
    
    function createMingMa(){
    	var paramStr = "";
        $("form").find("input[type!=submit]").each(function (i,obj) {
            $(obj).attr("name");
            paramStr = paramStr + "&"+$(obj).attr("name")+"="+$(obj).val();
        });
        paramStr = paramStr.substr(1,paramStr.length)+"&"+$("select").attr("name")+"="+$("select>option:selected").text();
        $(".mingma").html(paramStr);
    }
    
    function change_method(){
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
	    			createMingMa();
    			}
    		});
    	}
    }

</script>
</body>
</html>