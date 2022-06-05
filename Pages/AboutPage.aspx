<%@ page language="C#" autoeventwireup="true" enableeventvalidation="True" validaterequest="false" inherits="gcmenterprise.AboutPage, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head runat="server">
	  <title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/AboutPage.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" src='../JS/Mask.js?sv=1.127.2017' type="text/javascript"></script>
		
		<script type="text/javascript" src="../JS/AboutPage_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
				<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
					<div id="Div4" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labSolutionTitle" runat="server" Text="GCM Enterprise - Sistema Admin" />
						<asp:Label id="ProjectVersion" runat="server" Text="1.127.2017" />
						<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
					</div>
					<asp:Panel id="Panel1" runat="server" BorderStyle="Solid" BorderWidth="1" ScrollBars="Auto">
						<asp:Label id="labProjectTitle" runat="server" Text="GCM Enterprise - Sistema Admin" />
						<asp:Label id="CompanyName" runat="server" Text="Reação Soluções em Tecnologia" />
						<asp:LinkButton id="Link1" runat="server" Font-Underline="true" OnClick="___Link1_OnClick" PostBackUrl="#" Text="<%$ Resources: Link1 %>" />
						<asp:LinkButton id="Link2" runat="server" Font-Underline="true" OnClick="___Link2_OnClick" PostBackUrl="#" Text="<%$ Resources: Link2 %>" />
						<asp:LinkButton id="Link3" runat="server" Font-Underline="true" OnClick="___Link3_OnClick" PostBackUrl="#" Text="<%$ Resources: Link3 %>" />
						<asp:LinkButton id="Link4" runat="server" Font-Underline="true" OnClick="___Link4_OnClick" PostBackUrl="#" Text="<%$ Resources: Link4 %>" />
					</asp:Panel>
					<asp:Label id="ProjectCopyright" runat="server" Text="Todos os direitos reservados" />
					<asp:Image id="Image1" runat="server" ImageUrl="../Images/AspxModule/tela-abertura.jpg" />
				</div>
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
