<!DOCTYPE html>
<#assign base=request.contextPath />
<html lang="en">
<script type="text/javascript" src="${request.contextPath}/static/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
    var webroot = '${request.contextPath}';
</script>
<body>
<#list cityList as city>

City: ${city.cityName}! <br>
Q:Why I like? <br>
A:${city.description}!

</#list>
<#list apiList as api>

City: ${api.apiName}! <br>

</#list>
</body>

</html>