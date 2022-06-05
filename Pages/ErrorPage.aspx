﻿<%@ page language="C#" autoeventwireup="true" enableeventvalidation="True" validaterequest="false" inherits="gcmenterprise.ErrorPage, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head runat="server">
	  <title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/ErrorPage.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" src='../JS/Mask.js?sv=1.127.2017' type="text/javascript"></script>
		
		<script type="text/javascript" src="../JS/ErrorPage_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
				<telerik:RadAjaxPanel id="AjaxPanel1" runat="server" LoadingPanelID="___AjaxPanel1_AjaxLoading">
					<asp:Image id="Image1" runat="server" ImageUrl="../Images/Imagens/warning.png" />
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
						<telerik:RadLabel id="Label4" runat="server" Text="<%$ Resources: Label4 %>" />
						<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
							<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
							<telerik:RadLabel id="Label3" runat="server" Text="<%$ Resources: Label3 %>" />
							<asp:Label id="labHttpErrorCode" runat="server" Text="HTTP ERROR CODE" />
							<asp:Label id="labHttpErrorMessage" runat="server" Text="HTTP ERROR Message" />
						</div>
					</div>
					<telerik:RadAjaxLoadingPanel ID="___AjaxPanel1_AjaxLoading" runat="server">
					</telerik:RadAjaxLoadingPanel>
				</telerik:RadAjaxPanel>
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
