<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<%@ include file="../../commons/opera-maskui-dialog-import.jsp" %>
	<%@ include file="../../commons/operamaskui-grid-roweditor.jsp" %>
	<title><%=StockRecord.TABLE_ALIAS%>编辑</title>
</rapid:override>

<rapid:override name="content">
	<form:form method="put" action="${ctx}/stockrecord/update/${stockRecord.stockOperationId}" modelAttribute="stockRecord">
		<input id="submitButton" name="submitButton" type="submit" value="提交" />
		<input type="button" value="返回列表" onclick="window.location='${ctx}/stockrecord'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<table class="formTable">
		<%@ include file="form_include.jsp" %>
		</table>
	</form:form>
	
	<script>
		
		new Validation(document.forms[0],{onSubmit:true,onFormValidate : function(result,form) {
			var finalResult = result;
			
			//在这里添加自定义验证
			
			return disableSubmit(finalResult,'submitButton');
		}});
	</script>
	<%@ include file="tab_include.jsp" %>   
</rapid:override>
<%@ include file="base.jsp" %>