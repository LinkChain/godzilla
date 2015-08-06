<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>配置查询02-哥斯拉</title>
<link type="text/css" href="/${basePath}/css/meta.css" rel="stylesheet"/>
<script src="/${basePath}/js/mySelect.js"></script>
<script>
window.onload=function(){
	mySelect('application');
};
</script>
</head>
<body id="query" class="query">
<input type="hidden" name="projectCode" id="projectCode" value="${projectCode}" />
<input type="hidden" name="sid" id="sid" value="${sid}" />

	<div class="main">	
		<div class="head  clearfix">
        	<h1><a class="logo" hidden="index.html" title="回到首页">哥斯拉</a></h1>
            <div class="r">你好，刘宝剑！<a href="#" title="退出系统" class="btn1">退出</a></div>
        </div>
        <div class="mainCon clearfix">
        	<div class="mainConL l">
            	<h3>个人信息</h3>
                <table>
                  <tr>
                    <td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
                    <td>${user.userName}</td>
                  </tr>
                  <tr>
                    <td>登录时间：</td>
                    <td>${user.lastLoginTime?string("yyyy-MM-dd HH:mm:ss")}</td>
                  </tr>
                  <tr>
                    <td>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</td>
                    <td>$//{user.departName}</td>
                  </tr>
                  <tr>
                    <td>上次操作：</td>
                    <td>$//{user.lastOperaTime}</td>
                  </tr>
                </table>
            </div>
        	<div class="mainConR r">
            	<h2 id="tab1" class="current"><a href="jvascript:;" class="a1" title="工作空间">工作空间</a><a  href="jvascript:;" class="a2">管理权限</a></h2>
            	<h3 class="location">当前应用：${projectCode}</h3>
              <form id="search_form" action="/${basePath}/prop/${sid}/${projectCode}/queryProp.do" method="POST">
              		<fieldset>
                  	<label>提交人：</label><input type="text" name="createBy" placeholder="输入内容" />
                  	<label>应用：</label>
                  	${selectedProjectCode}
                    	<select name="selectedProjectCode">
                    		<#list projectList as project>
                			  	<#if project.projectCode = selectedProjectCode!'godzilla'>
								  <option value="${project.projectCode}" selected="selected">${project.projectCode}</option>
								<#else>
								  <option value="${project.projectCode}">${project.projectCode}</option>
								</#if>  
                    		</#list>
                  		</select>
                	<label>环境：</label>
                	<select name="selectedProfile">
                		<#list profileList?keys as key>
                			<#if key == selectedProfile!'ALL'>
							  <option value="${profileList[key]}" selected="selected">${key}</option>
							<#else>
							  <option value="${profileList[key]}">${key}</option>
							</#if>  
                    	</#list>
              		</select>
              		
              		<input type="submit" name="submit" value="查询" />
                	<!-- <a href="javascript:;" class="search">查询</a>-->
                  </fieldset>
              		
              </form>
              
              <div class="table2">
                <table width="100%">
                <thead>
                  <tr>
                    <th width="20%">配置项名称</th>
                    <th width="40%">配置值</th>
                    <th width="10%">提交人</th>
                    <th width="15%">应用名称</th>
                    <th width="15%">环境</th>
                  </tr>
                 </thead>
                 <tbody>
                 	<#list propList as prop>
             		  <tr>
	                    <td>${prop.proKey}</td>
	                    <td>${prop.proValue}</td>
	                    <td>${prop.createBy}</td>
	                    <td>${prop.projectCode}</td>
	                    <td>
	                    <#if prop.profile == 'TEST'>
	                    	测试环境
						<#elseif prop.profile == 'PRODUCT'>
							生产环境
						<#elseif prop.profile == 'QUASIPRODUCT'>
							 准生产环境
						</#if>  
	                    </td>
	                  </tr>
                 	</#list>
                  
                  </tbody>
                </table>
                </div>
                <h4><a  href="#" class="btn2" title="更多信息">更多信息</a></h4>
            </div>
        </div>
	</div>
<script src="/${basePath}/js/jquery-1.8.2.min.js"></script>
<script src="/${basePath}/js/common.js"></script>
</body>
</html>