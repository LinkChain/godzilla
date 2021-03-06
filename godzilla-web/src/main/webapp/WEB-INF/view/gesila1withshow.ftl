<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>哥斯拉</title>
<link type="text/css" href="/${basePath}/css/meta.css" rel="stylesheet" />
</head>
<body id="gesila1">
	<div class="main">
		<div class="head  clearfix">
        	<h1><a class="logo" href="/${basePath}/user/${sid}/home.do" title="回到首页">哥斯拉</a></h1>
            <div class="r">你好，${user.userName}！<a id="logout" href="#" title="退出系统" class="btn1">退出</a></div>
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
                    <td>${user.loginTime?string("yyyy-MM-dd")!''}</td>
                  </tr>
                  <tr>
                    <td>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</td>
                    <td>${user.departName!''}</td>
                  </tr>
                  <tr>
                    <td>上次操作：</td>
                    <td>${user.lastOperation!user.loginTime?string("yyyy-MM-dd")}</td>
                  </tr>
                </table>
            </div>
			<div class="mainConR r">
				<h2 id="tab1" class="current">
					<a href="/${basePath}/user/${sid}/home.do" class="a1" title="工作空间">工作空间</a>
					<#if user.isAdmin = 1>
					<a href="/${basePath}/user/${sid}/userAuthList.do" class="a2" title="管理权限">管理权限</a>
					<#else>
					<!-- <a href="javascript:void(0);" class="a2" title="管理权限">管理权限</a> -->
					</#if>
				</h2>
				 <a class="backindex" href="/${basePath}/project/${sid}/${projectCode}/TEST/projectConfig.do" title="${projectCode}"><h3 class="location">当前应用：${projectCode}</h3></a>

				<ul id="tab2" class="clearfix">
					<#if profile = 'TEST'>
					<li class="current" style="border-left: 0"><a href="/${basePath}/project/${sid}/${projectCode}/TEST/projectConfig.do" title="日常环境">日常环境</a></li>
					<li><a href="/${basePath}/project/${sid}/${projectCode}/QUASIPRODUCT/projectConfig.do" title="预发标准环境">预发标准环境</a></li>
					<li><a href="/${basePath}/project/${sid}/${projectCode}/PRODUCT/projectConfig.do" title="生产标准环境">生产标准环境</a></li> 
					<#elseif profile = 'QUASIPRODUCT'>
					<li><a href="/${basePath}/project/${sid}/${projectCode}/TEST/projectConfig.do" title="日常环境">日常环境</a></li>
					<li class="current" style="border-left: 0"><a href="/${basePath}/project/${sid}/${projectCode}/QUASIPRODUCT/projectConfig.do" title="预发标准环境">预发标准环境</a></li>
					<li><a href="/${basePath}/project/${sid}/${projectCode}/PRODUCT/projectConfig.do" title="生产标准环境">生产标准环境</a></li> 
					<#elseif profile = 'PRODUCT'>
					<li><a href="/${basePath}/project/${sid}/${projectCode}/TEST/projectConfig.do" title="日常环境">日常环境</a></li>
					<li><a href="/${basePath}/project/${sid}/${projectCode}/QUASIPRODUCT/projectConfig.do" title="预发标准环境">预发标准环境</a></li>
					<li class="current" style="border-left: 0"><a href="/${basePath}/project/${sid}/${projectCode}/PRODUCT/projectConfig.do" title="生产标准环境">生产标准环境</a></li> 
					</#if>
				</ul>
				<ul id="tabCon2">
					<#if profile = 'TEST'>
					<li style="display: block">
					<#else>
					<li>
					</#if>
						<div class="table2">
							<table width="100%" border="0">
								<thead>
									<tr>
										<th colspan="2" align="left">godzilla@${clientConfig.remoteIp}</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td width="80" class="paddingR0">部署操作：</td>
										<td class="bg1"><span class="spanArrange"><a class="deploy" href="javacript:;" value1="${project.checkoutPath}" value2="TEST" title="部署">部署</a></span><span class="spanUseAgain"><a href="#" class="restart" value2="TEST" title="重新启动">重新启动</a></span></td>
									</tr>
									<tr>
										<td class="paddingR0">SVN操作：</td>
										<td class="bg1"><span class="spanViewState"><a class="show" href="javacript:;" title="查看状态">查看状态</a></span> <span class="spanMerge"><a class="merge" href="javacript:;" title="合并代码">合并代码</a></span> <span class="spnSubmit"><a class="commit" href="javacript:;" title="提交主干">提交主干</a></span></td>
									</tr>
									<tr>
										<td class="paddingR0">设置操作：</td>
										<td class="bg1"><span class="spanSoureCode"><a class="src_a" href="javacript:;" title="源代码设置">源代码设置</a></span> <span class="spanBranch"><a class="branch_a" href="javacript:;" title="分之设置">分支设置</a></span></td>
									</tr>
									<tr>
										<td class="paddingR0">配置管理：</td>
										<td class="bg1"><span class="spanAdd"><a class="prop_btn" value1="add" href="/${basePath}/prop/${sid}/${projectCode}.do" title="配置添加">配置添加</a></span><span class="spanQuery"><a class="prop_btn" value1="query" href="/${basePath}/prop/${sid}/${projectCode}/queryProp.do" title="配置查询">配置查询</a></span><span class="spanExamine"><a class="prop_btn" value1="verify" href="/${basePath}/prop/${sid}/${projectCode}/verifyProp.do" title="配置审核">配置审核</a></span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
					<#if profile = 'QUASIPRODUCT'>
					<li style="display: block">
					<#else>
					<li>
					</#if>
						<div class="table2">
							<table width="100%" border="0">
								<thead>
									<tr>
										<th colspan="2" align="left">godzilla@${clientConfig.remoteIp}</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td width="80" class="paddingR0">部署操作：</td>
										<td class="bg1"><span class="spanArrange"><a class="deploy" href="javacript:;" value1="${project.checkoutPath}" value2="QUASIPRODUCT" title="部署">部署</a></span><span class="spanUseAgain"><a href="#" class="restart" value2="QUASIPRODUCT" title="重新启动">重新启动</a></span></td>
									</tr>
									<tr>
										<td class="paddingR0">SVN操作：</td>
										<td class="bg1"><span class="spanViewState"><a class="show" href="javacript:;" title="查看状态">查看状态</a></span> <span class="spanMerge"><a class="merge" href="javacript:;" title="合并代码">合并代码</a></span> <span class="spnSubmit"><a class="commit" href="javacript:;" title="提交主干">提交主干</a></span></td>
									</tr>
									<tr>
										<td class="paddingR0">设置操作：</td>
										<td class="bg1"><span class="spanSoureCode"><a class="src_a" href="javacript:;" title="源代码设置">源代码设置</a></span> <span class="spanBranch"><a class="branch_a" href="javacript:;" title="分之设置">分支设置</a></span></td>
									</tr>
									<tr>
										<td class="paddingR0">配置管理：</td>
										<td class="bg1"><span class="spanAdd"><a class="prop_btn" value1="add" href="/${basePath}/prop/${sid}/${projectCode}.do" title="配置添加">配置添加</a></span><span class="spanQuery"><a class="prop_btn" value1="query" href="/${basePath}/prop/${sid}/${projectCode}/queryProp.do" title="配置查询">配置查询</a></span><span class="spanExamine"><a class="prop_btn" value1="verify" href="/${basePath}/prop/${sid}/${projectCode}/verifyProp.do" title="配置审核">配置审核</a></span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
					<#if profile = 'PRODUCT'>
					<li style="display: block">
					<#else>
					<li>
					</#if>
						<div class="table2">
							<table width="100%" border="0">
								<thead>
									<tr>
										<th colspan="2" align="left">godzilla@${clientConfig.remoteIp}</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td width="80" class="paddingR0">部署操作：</td>
										<td class="bg1"><span class="spanArrange"><a class="deploy" href="javacript:;" value1="${project.checkoutPath}" value2="PRODUCT" title="打包">打包</a></span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
				</ul>
				<h4 class="title">源代码信息列表</h4>
				<table width="100%" border="0" class="table2">
					<thead>
						<tr>
							<th>源代码svn路径</th>
							<th>源代码存放路径</th>
							<th>当前版本号</th>
							<th>部署版本号</th>
						</tr>
					</thead>
					<tbody>
						<#if project.repositoryUrl = ''>
						<tr>
							<td width="216"><small></small></td>
							<td width="216"><small></small></td>
							<td></td>
							<td></td>
						</tr>
						<#else>
						<tr>
							<td width="216"><small>${project.repositoryUrl}</small></td>
							<td width="216"><small>${project.checkoutPath}</small></td>
							<td>${project.version}</td>
							<td>${project.deployVersion}</td>
						</tr>
						</#if>

					</tbody>
				</table>
				<h4 class="title">分支设置</h4>
				<table width="100%" border="0" class="table2">
					<thead>
						<tr>
							<th>分支路径</th>
							<th>设置人</th>
							<th>当前版本号</th>
							<th>设置时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<#list svnBranchConfigs as branch>
						<tr>
							<td width="310">${branch.branchUrl}</td>
							<td>${branch.createBy}</td>
							<td>${branch.currentVersion}</td>
							<td>${branch.createTime?string("yyyy-MM-dd HH:mm:ss")}</td>
							<td><a class="edit_branch" value1="${branch.id}" href="javascript:viod(0);" title="编辑">编辑</a></td>
						</tr>
						</#list>
					</tbody>
				</table>
				<h4 class="title">部署日志</h4>
				<div id="recordTolls">
					<ul>
						<li class="l"><span>部署状态：<!--$/{projStatus.currentStatus}--></span>
						<span class="progress"><strong id="process" style="width: 0px"></strong></span>
						<span id="processText"> <!--$/{projStatus.processRate}-->0%
						</span></li>
						<li class="r sp02"><a href="javascript:;" class="r tools1"><span class="edit">比较部署包信息</span></a><a href="javascript:;" class="r tools2"><span class="edit">比较部署包信息</span></a><a href="javascript:;" class="r tools3"><span class="edit">比较部署包信息</span></a></li>
					</ul>
					<table width="100%" border="0" class="table2">
						<thead>
							<tr>
								<th width="180">部署时间</th>
								<th>部署人</th>
								<th>操作</th>
								<th>部署结果</th>
								<th>备注</th>
							</tr>
						</thead>
						<tbody>
							<#list operateLogs as log>
							<tr>
								<td>${log.executeTime?string("yyyy-MM-dd HH:mm:ss")}</td>
								<td>${log.userName}</td>
								<td>${log.operateCode}</td>
								<td class="fail">${log.executeResult}</td>
								<td>${log.resultInfo}</td>
							</tr>
							</#list>
						</tbody>
					</table>
				</div>
				<h4>
					<a href="#" class="btn2" title="更多信息">更多信息</a>
				</h4>
			</div>

			<div id="shadow" class="shadow" style="display: none"></div>
			<div id="shadow_box1" class="shadow_box" style="display: none">
				<!--<h5>
					console<span id="close1" class="close">关闭</span>
				</h5>
				<div class="shadow_con">
					<div id="messagebox" class="user_con clearfix"></div>
				</div>-->
				<h5>
					实时日志<span class="close" id="close1">关闭</span>
				</h5>
				<div class="shadow_con">
					<textarea id="messagebox" rows="10" cols="55" style="overflow: scroll;" readonly="true">
							
						</textarea>
				</div>
			</div>


			<div id="shadow_box2" class="shadow_box">
				<h5>
					源代码设置->add<span id="close2" class="close">关闭</span>
				</h5>
				<div class="shadow_con">

					<div class="user_con clearfix">
						<label>源代码svn路径：</label> <input id="repositoryUrl" type="text" name="repositoryUrl" value="${project.repositoryUrl}" />
					</div>
					<div class="user_con clearfix">
						<label>源代码存放路径：</label> <input id="checkoutPath" type="text" name="checkoutPath" value="${project.checkoutPath}" />
					</div>
					<div class="user_con clearfix">
						<label>当前版本号：</label> <input id="version" type="text" name="version" value="${project.version}" />
					</div>
					<div class="user_con clearfix">
						<label>部署版本号：</label> <input id="deployVersion" type="text" name="deployVersion" value="${project.deployVersion}" />
					</div>
					<input id="editSrcBtn" type="button" class="shadow_btn mar150_l" value="修改" />
				</div>
			</div>

			<div id="shadow_box3" class="shadow_box">
				<h5>
					分支设置->add<span id="close3" class="close">关闭</span>
				</h5>
				<div class="shadow_con">
					<div class="user_con clearfix">
						<label>分支路径：</label> <input id="branchUrl" type="text" name="branchUrl" />
					</div>
					<div class="user_con clearfix">
						<label>当前版本号：</label> <input id="currentVersion" type="text" name="currentVersion" />
					</div>
					<input id="addBranchBtn" type="button" class="shadow_btn mar150_l" value="添加" />
				</div>
			</div>
		</div>

	</div>

	<input type="hidden" name="projectCode" id="projectCode" value="${projectCode}" />
	<input type="hidden" name="profile" id="profile" value="${profile}" />
	<input type="hidden" id="srcId" name="srcId" value="${project.id}" />

	<script src="http://mini.jiasule.com/framework/jquery/1.8.0/jquery-1.8.0.min.js"></script>
	<script src="/${basePath}/js/common.js"></script>
	<script src="/${basePath}/js/websocket.js"></script>
	<script>
		function shadowClose(index) {
			var oClose = document.getElementById('close' + index);
			var oShadow = document.getElementById('shadow');
			var oShadowBox = document.getElementById('shadow_box' + index);
			oClose.onclick = function() {
				oShadow.style.display = 'none';
				oShadowBox.style.display = 'none';
			}
		}
		window.onload = function() {
			//关闭弹出层
			shadowClose(1);
			shadowClose(2);
			shadowClose(3);
			document.getElementById('close' + '1').click();
			document.getElementById('close' + '2').click();
			document.getElementById('close' + '3').click();
		}
		function showWindow(index) {
			var oShadow = document.getElementById('shadow');
			var oShadowBox = document.getElementById('shadow_box' + index);
			oShadow.style.display = '';
			oShadowBox.style.display = '';
		}
		//更新进度条 
		function updateProcess(profile) {
			var sid='${sid}';
			var projectCode='${projectCode}';
			
			$.ajax({
	            type: "POST",
	            url: "/${basePath}/mvn/${sid}/${projectCode}/" + profile + "/process.do",
	            data: {
	            },
	            dataType: "json",
	            success: function(data) {
					//var result=eval("("+data+")");//转换为json对象
					var result = data;
					if(result.returncode=="200000") {
						$("#process").width(result.processPercent * 148.0 / 100.0);
						$("#processText").text(result.processPercent + "%");	
						if(result.processPercent == '100'){
							clearInterval("updateProcess('"+profile+"')");  
						}
					}
				}
	        });
		}
	</script>
	<script>
	$(document).ready(function() {
		// 退出
	    $("#logout").on("click", function() {
			window.location.href = '/${basePath}/user/logout/${sid}.do';
		});
		
		// 部署
	    $(".deploy").on("click", function() {
	        var value1 = $(this).attr("value1");
	        var profile = $(this).attr("value2");
	
	        $.ajax({
	            type: "POST",
	            url: "/${basePath}/mvn/${sid}/${projectCode}/" + profile + "/deploy.do",
	            data: {
	                srcUrl: value1,
	            },
	            dataType: "json",
	            success: function(data) {
					
				}
	        });
	        //定时轮询 进度条更新
	        setInterval("updateProcess('"+profile+"')",1000);
	        showWindow(1);
	
	        var usernameArea = '${username}-' + 'mvn';
	        send(usernameArea);
	        $("#messagebox").empty();
	    });
	    // 重新启动
	    $('.restart').click(function() {
	        var profile = $(this).attr("value2");
	        $.ajax({
	            type: "GET",
	            url: "/${basePath}/tomcat/${sid}/${projectCode}/"+profile+"/restart.do",
	            data: {
	            },
	            dataType: "json",
	            success: function(data) {
	
				}
	        });
	    });
	    
		//源代码设置
	    $(".src_a").on("click",
	    function() {
	        showWindow(2);
	    });
		//分支设置
	    $(".branch_a").on("click",
	    function() {
	        showWindow(3);
	    });
	
	    // 分支编辑
	    $(".edit_branch").on("click", function() {
	        var branchId = $(this).attr("value1");
	        $(this).parent().parent().find("td").each(function(index, element) {
	            if (index == 0) {
	                var param = $(this).html();
	                $(this).html('<input type="text" name="branchUrl"  value="' + param + '"/>  ');
	            } else if (index == 1) {} else if (index == 2) {
	                var param = $(this).html();
	                $(this).html('<input type="text" name="currentVersion"  value="' + param + '"/>  ');
	            } else if (index == 3) {} else if (index == 4) {
	                $(this).html('<a class="save_branch" value1="' + branchId + '" href="javascript:viod(0);" title="保存">保存</a>');
	
	            }
	        });
	
	    });
	
	    // 分支保存 修改分支
	    $(".save_branch").live("click", function() {
	        var branchId = $(this).attr("value1");
	        var branchUrl = "";
	        var currentVersion = "";
	        $(this).parent().parent().find("td").each(function(index, element) {
	            if (index == 0) {
	                branchUrl = $(this).find("input").val();
	            } else if (index == 2) {
	                currentVersion = $(this).find("input").val();
	            }
	        });
	
	        $.ajax({
	            type: "GET",
	            url: "/${basePath}/svnbranch/${sid}/${projectCode}/${profile}/edit.do",
	            dataType: "json",
	            data: {
	                id: branchId,
	                branchUrl: branchUrl,
	                currentVersion: currentVersion,
	            },
	            success: function(data) {
	                if (data == "SUCCESS") {
	                    window.location.href = '/${basePath}/project/${sid}/${projectCode}/${profile}/projectConfig.do';
	                } else {
	                    alert("failed");
	                }
	            }
	        });
	    });
	
	    // 源代码设置-->添加或修改源代码设置
	    $(".editSrcBtn").on("click", function() {
	        var srcId = $("#srcId").val();
	        var repositoryUrl = $("#repositoryUrl").val();
	        var checkoutPath = $("#checkoutPath").val();
	        var version = $("#version").val();
	        var deployVersion = $("#deployVersion").val();
	
	        $.ajax({
	            type: "GET",
	            url: "/${basePath}/project/${sid}/${projectCode}/${profile}/srcEdit.do",
	            dataType: "json",
	            data: {
	                srcId: srcId,
	                repositoryUrl: repositoryUrl,
	                checkoutPath: checkoutPath,
	                version: version,
	                deployVersion: deployVersion,
	            },
	            success: function(data) {
	                if (data == "SUCCESS") {
	                    window.location.href = '/${basePath}/project/${sid}/${projectCode}/${profile}/projectConfig.do';
	                } else {
	                    alert("failed");
	                }
	            }
	        });
	    });
	    // 分支设置-->添加分支
	    $(".addBranchBtn").on("click", function() {
	
	        var branchUrl = $("#branchUrl").val();
	        var currentVersion = $("#currentVersion").val();
	
	        $.ajax({
	            type: "GET",
	            url: "/${basePath}/svnbranch/${sid}/${projectCode}/${profile}/add.do",
	            dataType: "json",
	            data: {
	                branchUrl: branchUrl,
	                currentVersion: currentVersion,
	            },
	            success: function(data) {
	                if (data == "SUCCESS") {
	                    window.location.href = '/${basePath}/project/${sid}/${projectCode}/${profile}/projectConfig.do';
	                } else {
	                    alert("failed");
	                }
	            }
	        });
	    });
	
	    // svn 查看状态
	    $(".show").on("click", function() {
	        $.ajax({
	            type: "GET",
	            url: "/${basePath}/svn/${sid}/${projectCode}/${profile}/status.do",
	            dataType: "json",
	            success: function(data) {
	
				}
	        });
	
	        showWindow(1);
	
	        var usernameArea = '${username}-' + 'svn';
	        send(usernameArea);
	        $("#messagebox").empty();
	
	    });
	    // svn 合并分支
	    $(".merge").on("click", function() {
	        $.ajax({
	            type: "GET",
	            url: "/${basePath}/svn/${sid}/${projectCode}/${profile}/merge.do",
	            dataType: "json",
	            success: function(data) {
	
				}
	        });
	
	        showWindow(1);
	
	        var usernameArea = '${username}-' + 'svn';
	        send(usernameArea);
	        $("#messagebox").empty();
	    });
	    // svn 提交主干
	    $(".commit").on("click", function() {
	        $.ajax({
	            type: "GET",
	            url: "/${basePath}/svn/${sid}/${projectCode}/${profile}/commit.do",
	            dataType: "json",
	            success: function(data) {
	
				}
	        });
	
	        showWindow(1);
	
	        var usernameArea = '${username}-' + 'svn';
	        send(usernameArea);
	        $("#messagebox").empty();
	    });
	
	    // 退出
	    $("#logout").on("click", function() {
			window.location.href = '/${basePath}/user/logout/${sid}.do';
		});
	
	});
	</script>
</body>
</html>
