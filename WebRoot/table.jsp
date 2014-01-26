<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
    <title>My JSP 'head.jsp' starting page</title>
	<script type="text/javascript">
	$(document).ready(function(){
	  $("#test").coolGrid({
	  	url: './gridHandler.action',
		colModel :
		[
			{type:'data',display: '序号', name : 'ID', width : 15, key:true, editable:false, sortable:true},
			{type:'data',display: '状态', name : 'STATUS', width : 10},
			{type:'data',display: '审核人', name : 'AUDITOR', width : 20},
			{type:'data',display:'实际审核人',name:'REAL_AUDITOR', width : 20},
			{type:'data',display: '审核日期', name : 'VERIFY_DATE', width : 25},
			{type:'delete|detail',display: '操作', name : 'operator', width : 20}
		],
		queryModel:
		{
			legend:'审核查询信息',
			data:[
				{type:'data', display:'序号',name:'ID'},
				{type:'data', display:'状态',name:'STATUS'},
				{type:'data', display:'审核人',name:'AUDITOR'},
				{type:'data', display:'实际审核人',name:'REAL_AUDITOR'},
				{type:'data', display:'审核日期',name:'VERIFY_DATE'}
				]
		},
		insertModel:
		[
			{type:'text', display:'序号',name:'ID', nullable:"NO"},
			{type:'text', display:'状态',name:'STATUS', nullable:"NO"},
			{type:'text', display:'审核人',name:'AUDITOR'},
			{type:'text', display:'实际审核人',name:'REAL_AUDITOR'},
			{type:'text', display:'审核日期',name:'VERIFY_DATE'}
		],
		detailModel:
		'get',
		sortorder: 'asc',
		activeSortCol:'ID',
		width:750,
		pageSize: 4,
		databaseTableName:'detail',
		queryParams:[{name:'MAIN_ID',value:'SQ20120903ADMI0002'}],
		colResize:true,
		saveTableEnable:true
		});
	});
	</script>
  </head>
  <body>
  	<div style="margin-left:50px" id="test">
  	</div>
  </body>
</html>
