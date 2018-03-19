<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>任务</title>
<!-- 引入jquery -->
<script type="text/javascript" src="static/js/jquery-3.3.1.min.js"></script>
<!-- 引入样式 -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 添加模态框 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加任务</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label for="desription_add_input" class="col-sm-2 control-label">内容</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="description" id="desrciption_add_input" placeholder="请输入内容">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="reward_add_input" class="col-sm-2 control-label">奖励</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="reward"id="reward_add_input" placeholder="请输入奖励">
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="task_add">新增</button>
      </div>
    </div>
  </div>
</div>
<!-- 修改模态框 -->
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">修改任务</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label for="desription_update_input" class="col-sm-2 control-label">内容</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="description" id="desrciption_update_input" >
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="reward_update_input" class="col-sm-2 control-label">奖励</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="reward"id="reward_update_input" >
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="task_update">修改</button>
      </div>
    </div>
  </div>
</div>
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>任务列表</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4">
				<a href="main" class="btn btn-primary btn-lg active btn-sm" role="button">
					<span class="glyphicon glyphicon-home" aria-hidden="true"> 返回</span>
				</a>
			</div>
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" id="add_modal_btn"> 
					<span class="glyphicon glyphicon-plus" aria-hidden="true"> 新增</span>
				</button>
			</div>
		</div>
		<!-- 显示数据 -->
		<c:if test="${empty pageInfo.list }">
			<h3 align="center">没有任务了~</h3>
		</c:if>
		<c:if test="${!empty pageInfo.list }">
		<div class="row">
			<div class="col-md-12">
			<table class="table table-hover">
				<tr>
					<th>内容</th>
					<th>奖励</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${pageInfo.list}" var="t">
					<tr>
						<th>${t.description }</th>
						<th>${t.reward }金币</th>
						<th>
							<button class="btn btn-success btn-sm finish_btn" finish-id="${t.tid }">
								<span class="glyphicon glyphicon-ok" aria-hidden="true"> 完成</span>
							</button>
							<button class="btn btn-warning btn-sm edit_btn" edit-id="${t.tid }">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"> 编辑</span>
							</button>
							<button class="btn btn-danger btn-sm delete_btn" del-id="${t.tid }">
								<span class="glyphicon glyphicon-trash" aria-hidden="true"> 删除</span>
							</button>
						</th>
					</tr>
				</c:forEach>
			</table>
			</div>
		</div>
		</c:if>
		<!-- 分页 -->
		<div class="row">
			<div class="col-md-6">
				<nav aria-label="Page navigation">
				  <ul class="pagination">
				  <li><a href="listTask?pn=1">首页</a></li>
				  <c:if test="${pageInfo.hasPreviousPage }">
				    <li>
				      <a href="listTask?pn=${pageInfo.pageNum-1 }" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				  </c:if>
				    <c:forEach items="${pageInfo.navigatepageNums}" var="pageNum">
				    	<c:if test="${pageNum == pageInfo.pageNum }">
				    		<li class="active"><a href="#">${pageNum}</a></li>
				    	</c:if>
				    	<c:if test="${pageNum != pageInfo.pageNum }">
				    		<li><a href="listTask?pn=${pageNum}">${pageNum}</a></li>
				    	</c:if>
				    </c:forEach>
				    <c:if test="${pageInfo.hasNextPage }">
				    <li>
				      <a href="listTask?pn=${pageInfo.pageNum+1}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				    </c:if>
				    <li><a href="listTask?pn=${pageInfo.pages}">末页</a></li>
				  </ul>
				</nav>
			</div>
			<div class="col-md-6">
				<br/>
				<br/>
				<p>当前金币：${user.goldCoin}</p>
			</div>
		</div>
	</div>
<script type="text/javascript">
	//点击新增弹出模态框
	$("#add_modal_btn").click(function(){
		$("#addModal").modal({
			backdrop:"static"
		});
	});
	//校验添加表单数据
	function validate_add_form(){
		var adopt = true;
		var description = $("#desrciption_add_input").val();
		var regDesc = /^[\u2E80-\u9FFF0-9]{2,15}/;
		var reward = $("#reward_add_input").val();
		var regReward = /^[0-9]{1,8}/;
		if(!regDesc.test(description)){
			alert("内容须为2-15位中文");
			return false;
		}
		if(!regReward.test(reward)){
			alert("奖励须为数字");
			return false;
		}
		return true;
	}
	//提交新增模态框
	$("#task_add").click(function(){
		//校验
		if(!validate_add_form()){
			return false;
		};
		//发送ajax请求
		$.ajax({
			url:"addTask",
			type:"post",
			data:$("#addModal form").serialize(),
			success:function(result){
				$("#addModal").modal("hide");
				location.href="listTask?pn=${pageInfo.pages}";
			}
		});
	});
	//点击编辑弹出模态框
	$(document).on("click",".edit_btn",function(){
		getTask($(this).attr("edit-id"));
		$("#task_update").attr("edit-id",$(this).attr("edit-id"));
		$("#updateModal").modal({
			backdrop:"static"
		});
	});
	//查询任务信息
	function getTask(id){
		$.ajax({
			url:"retrieval/"+id,
			type:"GET",
			success:function(result){
				$("#desrciption_update_input").val(result.description);
				$("#reward_update_input").val(result.reward);
			}
		});
	}
	//提交修改模态框
	$("#task_update").click(function(){
		//校验
		if(!validate_update_form()){
			return false;
		};
		//发送ajax请求
		$.ajax({
			url:""+$(this).attr("edit-id"),
			type:"PUT",
			data:$("#updateModal form").serialize(),
			success:function(result){
				$("#updateModal").modal("hide");
				location.href="listTask?pn=${pageInfo.pageNum}";
			}
		});
	});
	//校验修改表单数据
	function validate_update_form(){
		var description = $("#desrciption_update_input").val();
		var regDesc = /^[\u2E80-\u9FFF0-9]{2,15}/;
		var reward = $("#reward_update_input").val();
		var regReward = /^[0-9]{1,8}/;
		if(!regDesc.test(description)){
			alert("内容须为2-15位中文");
			return false;
		}
		if(!regReward.test(reward)){
			alert("奖励须为数字");
			return false;
		}
		
		return true;
	}
	//点击删除
	$(document).on("click",".delete_btn",function(){
		var tid = $(this).attr("del-id")
		if(confirm("确认删除这个任务吗？")){
			$.ajax({
				url:""+tid,
				type:"DELETE",
				success:function(result){
					location.href="listTask?pn=${pageInfo.pageNum}";
				}
			});
		}
	});
	//点击完成
	$(document).on("click",".finish_btn",function(){
		var tid = $(this).attr("finish-id")
		$.ajax({
			url:"finish?tid="+tid+"&uid=${user.uid}",
			type:"DELETE",
			success:function(result){
				$.ajax({
					url:""+tid,
					type:"DELETE",
					success:function(result){
						location.href="listTask?pn=${pageInfo.pageNum}";
					}
				});
			}
		});
	});
</script>
</body>
</html>