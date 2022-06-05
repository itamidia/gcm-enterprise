<%@ page language="C#" autoeventwireup="true" enableeventvalidation="True" validaterequest="false" inherits="gcmenterprise.Default, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head runat="server">
	  <title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/Default.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" src='../JS/Mask.js?sv=1.127.2017' type="text/javascript"></script>
		
		<script type="text/javascript" src="../JS/Default_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
				<telerik:RadAjaxPanel id="ajxMainAjaxPanel" runat="server" LoadingPanelID="___ajxMainAjaxPanel_AjaxLoading">
					<telerik:RadWindowManager id="WindowSettings1" runat="server" AutoSize="true" Behaviors="Default" DestroyOnClose="True"
						EnableFocusNextWindowShortcut="True" EnableShadow="True" HasScroll="False" NavigationReference="WindowHome"
						OnClientClose="___WindowSettings1_OnClientClose" OnClientPageLoad="___WindowSettings1_OnClientPageLoad"
						OnClientShow="___WindowSettings1_OnClientShow" PreserveClientState="True" RenderMode="Classic" RestrictionZoneID="__MainDiv"
						ShowContentDuringLoad="False" VisibleOnPageLoad="True" VisibleStatusbar="True" VisibleTitlebar="True" />
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<Div id="Line1">
						</Div>
						<telerik:RadLabel id="Label_Data" runat="server" />
						<telerik:RadLabel id="Label1" runat="server" />
						<asp:Button id="Button1" runat="server" CommandName="Button1" OnClientClick="___Button1_OnClientClick(this);return false;" TabIndex="1"
							ToolTip="Botão Menu - Ferramentas" />
						<asp:Button id="Button4" runat="server" CommandName="Button4" OnClick="___Button4_OnClick" OnClientClick="this.disabled = true;" TabIndex="4"
							ToolTip="Suporte Técnico" />
						<asp:Image id="Image3" runat="server" ImageUrl="../Images/Imagens/logosBR.png" />
						<asp:Button id="Button23" runat="server" CommandName="Button23" OnClick="___Button23_OnClick" OnClientClick="this.disabled = true;"
							TabIndex="21" ToolTip="Configuração do Sistema" />
					</div>
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
					</div>
					<div style="position:absolute !important;left:0px;top:0px;bottom:0px;margin-left:165px;margin-right:0px;margin-top:75px;margin-bottom:5px;right:0px" id="ParentDiv_IFrame1">
						<iframe id="IFrame1" runat="server" AllowTransparency="True" AutoExpandToContent="True" DefaultHeight="701" frameborder="0" name="IFrame1"
							scrolling="auto" src="DashBoard.aspx" />
					</div>
					<div id="Div_Menu" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Button id="Button5" runat="server" CommandName="Button5"
							OnClientClick="document.getElementById('IFrame1').contentWindow.location.href='DashBoard.aspx';return false;" TabIndex="5" />
						<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
						<asp:Button id="Button6" runat="server" CommandName="Button6"
							OnClientClick="document.getElementById('IFrame1').contentWindow.location.href='Controle_do_Almoxarifado.aspx';return false;" TabIndex="6"
							Text="<%$ Resources: Button6 %>" />
						<asp:Button id="Button9" runat="server" CommandName="Button9"
							OnClientClick="document.getElementById('IFrame1').contentWindow.location.href='AboutPage.aspx';return false;" TabIndex="7"
							Text="<%$ Resources: Button9 %>" />
						<Div id="Line3">
						</Div>
						<Div id="Line4">
						</Div>
						<asp:Image id="Image6" runat="server" ImageUrl="../Images/HelpDeskCliente/VisualizarTickets.png" />
						<Div id="Line5">
						</Div>
						<Div id="Line6">
						</Div>
						<Div id="Line7">
						</Div>
						<asp:Button id="Button10" runat="server" CommandName="Button10"
							OnClientClick="document.getElementById('IFrame1').contentWindow.location.href='Controle_de_Recursos_Humanos.aspx';return false;" TabIndex="8"
							Text="<%$ Resources: Button10 %>" />
						<asp:Image id="Image7" runat="server" ImageUrl="../Images/HelpDeskCliente/Usuario.png" />
						<asp:Button id="Button11" runat="server" CommandName="Button11"
							OnClientClick="document.getElementById('IFrame1').contentWindow.location.href='Controle_de_Ocorrencia.aspx';return false;" TabIndex="9"
							Text="<%$ Resources: Button11 %>" />
						<asp:Image id="Image8" runat="server" ImageUrl="../Images/HelpDeskCliente/Referencias.png" />
						<asp:Button id="Button12" runat="server" CommandName="Button12"
							OnClientClick="document.getElementById('IFrame1').contentWindow.location.href='Controle_de_Armaria.aspx';return false;" TabIndex="10"
							Text="<%$ Resources: Button12 %>" />
						<asp:Button id="Button13" runat="server" CommandName="Button13"
							OnClientClick="document.getElementById('IFrame1').contentWindow.location.href='Controle_do_Motomec.aspx';return false;" TabIndex="11"
							Text="<%$ Resources: Button13 %>" />
						<Div id="Line8">
						</Div>
						<asp:Image id="Image9" runat="server" ImageUrl="../Images/Imagens/viatura_moto.png" />
						<asp:Image id="Image10" runat="server" ImageUrl="../Images/Imagens/tich_oco.png" />
						<asp:Image id="Image11" runat="server" ImageUrl="../Images/Imagens/ferra_m.png" />
						<asp:Button id="Button14" runat="server" CommandName="Button14" OnClientClick="return Logoff();return false;" TabIndex="12"
							Text="<%$ Resources: Button14 %>" />
						<Div id="Line9">
						</Div>
						<asp:Image id="Image12" runat="server" ImageUrl="../Images/Imagens/End_Sair.png" />
						<asp:Button id="Button15" runat="server" CommandName="Button15" OnClick="___Button15_OnClick" TabIndex="13" Text="<%$ Resources: Button15 %>" />
						<asp:Image id="Image13" runat="server" ImageUrl="../Images/HelpDeskCliente/Referencias.png" />
						<Div id="Line10">
						</Div>
						<asp:Button id="Button16" runat="server" CommandName="Button16" OnClick="___Button16_OnClick" TabIndex="14" Text="<%$ Resources: Button16 %>" />
						<asp:Image id="Image14" runat="server" ImageUrl="../Images/HelpDeskCliente/VisualizarTickets.png" />
						<asp:Button id="Button17" runat="server" CommandName="Button17" OnClick="___Button17_OnClick" TabIndex="15" Text="<%$ Resources: Button17 %>" />
						<asp:Image id="Image15" runat="server" ImageUrl="../Images/Imagens/consultas.png" />
						<Div id="Line11">
						</Div>
						<Div id="Line12">
						</Div>
						<Div id="Line13">
						</Div>
						<asp:Button id="Button18" runat="server" CommandName="Button18" OnClick="___Button18_OnClick" TabIndex="16" Text="<%$ Resources: Button18 %>" />
						<telerik:RadLabel id="Label4" runat="server" Text="<%$ Resources: Label4 %>" />
						<Div id="Line14">
						</Div>
						<asp:Button id="Button22" runat="server" CommandName="Button22" OnClick="___Button22_OnClick" TabIndex="20" Text="<%$ Resources: Button22 %>" />
						<asp:Image id="Image17" runat="server" ImageUrl="../Images/Imagens/tich_oco.png" />
						<Div id="Line15">
						</Div>
						<asp:Button id="Button24" runat="server" CommandName="Button24" OnClick="___Button24_OnClick" TabIndex="22" Text="<%$ Resources: Button24 %>" />
						<asp:Image id="Image18" runat="server" ImageUrl="../Images/Imagens/impress.png" />
					</div>
					<div id="Div_Config" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Button id="Button2" runat="server" CommandName="Button2" OnClientClick="return Logoff();return false;" TabIndex="2"
							Text="<%$ Resources: Button2 %>" />
						<asp:Image id="Image1" runat="server" ImageUrl="../Images/Imagens padrão/End.png" />
						<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="3" Text="<%$ Resources: Button3 %>" />
						<asp:Image id="Image2" runat="server" ImageUrl="../Images/Mobile/Config.png" />
						<asp:Button id="Button19" runat="server" CommandName="Button19" OnClick="___Button19_OnClick" TabIndex="17" Text="<%$ Resources: Button19 %>" />
						<asp:Image id="Image5" runat="server" ImageUrl="../Images/HelpDeskCliente/GruposUsuarios.png" />
						<asp:Button id="Button20" runat="server" CommandName="Button20" OnClick="___Button20_OnClick" TabIndex="18" Text="<%$ Resources: Button20 %>" />
						<asp:Image id="Image4" runat="server" ImageUrl="../Images/Imagens padrão/Magnifier.png" />
						<asp:Button id="Button21" runat="server" CommandName="Button21" OnClick="___Button21_OnClick" TabIndex="19" Text="<%$ Resources: Button21 %>" />
						<asp:Image id="Image16" runat="server" ImageUrl="../Images/Imagens padrão/Magnifier.png" />
					</div>
					<telerik:RadAjaxLoadingPanel ID="___ajxMainAjaxPanel_AjaxLoading" runat="server">
					</telerik:RadAjaxLoadingPanel>
				</telerik:RadAjaxPanel>
			</div>
		</form>
		
</body>
<script type="text/javascript">
	ShowClientFormulas();

	function ShowClientFormulas()
	{
						try { document.getElementById("Label_Data").innerText = DateTime.Today.ToLongDateString(); }
						catch(e) { document.getElementById("Label_Data").innerText = ""; }
	}
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
		function ___Button1_OnClientClick(sender)
		{
			AlternateControlVisibility('Div_Config');
			UpdateDivAutoExpandToContent();
			resizeIframe();
			return false;
		}
		function ___WindowSettings1_OnClientPageLoad(sender, args)
		{
			OnClientPageLoad(sender);
		}
		function ___WindowSettings1_OnClientShow(sender, args)
		{
			OnClientShow(sender);
		}
		function ___WindowSettings1_OnClientClose(sender, args)
		{
			OnClientClose(sender);
		}

</script>

</html>
