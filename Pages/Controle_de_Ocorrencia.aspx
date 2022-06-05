<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Controle_de_Ocorrencia, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/Controle_de_Ocorrencia.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../JS/Controle_de_Ocorrencia_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
	<script type="text/javascript">	   

		
	</script>
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
	<script language="JavaScript" type="text/javascript">
	</script>
		
		<form id="Form1" runat="server">
			<asp:ScriptManager ID="MainScriptManager" runat="server"/>
			<telerik:RadAjaxPanel id="MainAjaxPanel" runat="server" class="c_MainAjaxPanel" ClientEvents-OnRequestStart="OnRequestStart" ClientEvents-OnResponseEnd="OnResponseEnd" LoadingPanelID="___Form1_AjaxLoading">
				<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labModuleTitle" runat="server" Text="<%$ Resources: Form1 %>" />
					</div>
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="1" Text="<%$ Resources: Button1 %>" />
						<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="2" Text="<%$ Resources: Button2 %>" />
						<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="3" Text="<%$ Resources: Button3 %>" />
						<asp:Button id="Button4" runat="server" CommandName="Button4" OnClick="___Button4_OnClick" TabIndex="4" Text="<%$ Resources: Button4 %>" />
						<asp:Button id="Button5" runat="server" CommandName="Button5" OnClick="___Button5_OnClick" TabIndex="5" Text="<%$ Resources: Button5 %>" />
						<asp:Button id="Button6" runat="server" CommandName="Button6" OnClick="___Button6_OnClick" TabIndex="6" Text="<%$ Resources: Button6 %>" />
						<asp:Button id="Button7" runat="server" CommandName="Button7" OnClick="___Button7_OnClick" TabIndex="7" Text="<%$ Resources: Button7 %>" />
						<asp:Button id="Button8" runat="server" CommandName="Button8" OnClick="___Button8_OnClick" TabIndex="8" Text="<%$ Resources: Button8 %>" />
						<asp:Button id="Button9" runat="server" CommandName="Button9" OnClick="___Button9_OnClick" TabIndex="9" Text="<%$ Resources: Button9 %>" />
						<asp:Button id="Button10" runat="server" CommandName="Button10" OnClick="___Button10_OnClick" TabIndex="10" Text="<%$ Resources: Button10 %>" />
						<asp:Button id="Button11" runat="server" CommandName="Button11" OnClick="___Button11_OnClick" TabIndex="11" Text="<%$ Resources: Button11 %>" />
						<asp:Button id="Button12" runat="server" CommandName="Button12" OnClick="___Button12_OnClick" TabIndex="12" Text="<%$ Resources: Button12 %>" />
						<asp:Button id="Button13" runat="server" CommandName="Button13" OnClick="___Button13_OnClick" TabIndex="13" Text="<%$ Resources: Button13 %>" />
						<asp:Button id="Button14" runat="server" CommandName="Button14" OnClick="___Button14_OnClick" TabIndex="14" Text="<%$ Resources: Button14 %>" />
						<asp:Button id="Button15" runat="server" CommandName="Button15" OnClick="___Button15_OnClick" TabIndex="15" Text="<%$ Resources: Button15 %>" />
						<asp:Button id="Button16" runat="server" CommandName="Button16" OnClick="___Button16_OnClick" TabIndex="16" Text="<%$ Resources: Button16 %>" />
						<asp:Button id="Button17" runat="server" CommandName="Button17" OnClick="___Button17_OnClick" TabIndex="17" Text="<%$ Resources: Button17 %>" />
					</div>
					<div style="position:absolute !important;left:0px;top:0px;bottom:0px;margin-right:0px;margin-top:270px;margin-bottom:0px;right:0px" id="ParentDiv_IFrame1">
						<iframe id="IFrame1" runat="server" AllowTransparency="True" AutoExpandToContent="True" DefaultHeight="430" frameborder="0" name="IFrame1"
							scrolling="no" src="Ocorrencias/Todos_os_Taloes_Listagem.aspx" />
					</div>
				</div>
			<telerik:RadAjaxLoadingPanel ID="___Form1_AjaxLoading" runat="server">
			</telerik:RadAjaxLoadingPanel>
			</telerik:RadAjaxPanel>
		</form>
		
	</body>
	<script type="text/javascript">
		var $j = jQuery.noConflict();
		$j(document).ready(SetFocusFirstField());
		function SetFocusFirstField()
		{
			try
			{
				{
					window.focus();
					setTimeout("var $j = jQuery.noConflict();$j('#Button1').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
