<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.CECOM, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/CECOM.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient(); setTimeout(function() {StartTimer(19);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.127.2017"></script>
<script type="text/javascript">
	var GTimers = new Array();
	function StartTimer(Timer)
	{
		var TickTime = 0;
		switch(Timer)
		{
			case 19:
			TickTime = 120000;
			break;
		}
		GTimers[Timer] = setTimeout("OnGTimerTick(" + Timer + ");", TickTime);
	}
	function StopTimer(Timer)
	{
		clearTimeout(GTimers[Timer]);
	}
	function OnGTimerTick(Timer)
	{
		switch(Timer)
		{
			case 19:
				Refresh();
			break;
		}
		StartTimer(Timer);
	}
</script>
	<script type="text/javascript" src="../JS/CECOM_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
				<div id="__MainDiv" class="c_MainDiv" FitToContent="False">
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
						<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" OnClientClick="this.disabled = true;" TabIndex="1"
							ToolTip="Atualizar CECOM" />
						<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" OnClientClick="this.disabled = true;" TabIndex="2"
							ToolTip="Imprimir Relatório - CECOM" />
					</div>
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
					</div>
					<div style="position:absolute !important;left:0px;top:0px;bottom:0px;margin-top:60px;margin-bottom:0px;width:240px" id="ParentDiv_IFrame1">
						<iframe id="IFrame1" runat="server" AllowTransparency="True" AutoExpandToContent="True" DefaultHeight="0" frameborder="0" name="IFrame1"
							scrolling="auto" src="Ocorrencias/Viaturas_Em_Atendimento.aspx" />
					</div>
					<div style="position:absolute !important;left:0px;top:0px;bottom:0px;margin-left:241px;margin-right:241px;margin-top:60px;margin-bottom:10px;right:0px" id="ParentDiv_Taloes_Aberto">
						<iframe id="Taloes_Aberto" runat="server" AllowTransparency="True" AutoExpandToContent="True" DefaultHeight="560" frameborder="0"
							name="Taloes_Aberto" scrolling="auto" src="Ocorrencias/Taloes_em_Aberto.aspx" />
					</div>
					<div style="position:absolute !important;top:0px;bottom:0px;margin-top:60px;margin-bottom:0px;right:0px;width:240px" id="ParentDiv_IFrame3">
						<iframe id="IFrame3" runat="server" AllowTransparency="True" AutoExpandToContent="True" DefaultHeight="570" frameborder="0" name="IFrame3"
							scrolling="auto" src="Ocorrencias/Viaturas_Disponiveis.aspx" />
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
