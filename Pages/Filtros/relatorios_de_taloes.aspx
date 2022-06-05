<%@ page language="C#" autoeventwireup="true" enableeventvalidation="True" validaterequest="false" inherits="gcmenterprise.relatorios_de_taloes, App_Web_mj1bal1d" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register TagPrefix="telerik" Assembly="Telerik.ReportViewer.WebForms" Namespace="Telerik.ReportViewer.WebForms" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head runat="server">
	  <title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
<style type="text/css">   
  html#html, body#body, form#form1, div#content, center#center
  { 
   border: 0px solid black;
   padding: 0px;
   margin: 0px;
   height: 100%;
  }
</style>
	<link rel="stylesheet" href="../../Styles/relatorios_de_taloes.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
<link rel="stylesheet" href="~/Styles/toast.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />
</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" src='../../JS/Mask.js?sv=1.127.2017' type="text/javascript"></script>
		
		<script type="text/javascript" src="../../JS/relatorios_de_taloes_USER.js?sv=1.127.2017" language="JavaScript"></script>
		<script language="JavaScript" type="text/javascript" src="../../JS/toastr.js"></script>
	<script type="text/javascript">
		function OnLoginSucceded()
		{
			if(getParentPage() != self && getParentPage() != null)
			{
				getParentPage().OnLoginSucceded();
			}
		}
		function TryLogin(PageToRedirect, RefreshControlsID)
		{
			TryParentLogin(PageToRedirect, RefreshControlsID);
		}
	</script>
		<form id="Form1" runat="server">
			<asp:ScriptManager ID="MainScriptManager" runat="server"/>
			<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
				<telerik:RadCodeBlock runat="server" ID="RCBHtmlCodeControl1">
				<div id="HtmlCodeControl1">
					<center id="center">
					<telerik:ReportViewer ID="ReportViewer1" ViewMode="PrintPreview" runat="server"  style="border:1px solid #ccc;" 
					   width="99%" height="99%"/>
					</center>
				</div>
				</telerik:RadCodeBlock>
				<asp:Label id="labError" runat="server" class="Error" />
			</div>
		</form>
		
</body>
<script type="text/javascript">
	ShowClientFormulas();

	function ShowClientFormulas()
	{
	}

</script>

</html>
