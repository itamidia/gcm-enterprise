<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Descautelar_Material, App_Web_g4o5dsry" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Descautelar_Material.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Edit(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Descautelar_Material_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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

		function GetAditionalFields(senderName) 
		{
			var AditionalFields;
			switch (senderName) 
			{
				case "TextBoxRadio":
					AditionalFields = 
					{
						"ComboBox18" : jQuery("#ComboBox18")[0].control.get_value(),
					};
					break;
				case "TextBoxSegundaArma":
					AditionalFields = 
					{
						"ComboBox14" : jQuery("#ComboBox14")[0].control.get_value(),
					};
					break;
			}
			return AditionalFields;
		}

		function ClientRefreshCombos(sender, args) 
		{
			var senderID = FindIdInObject(sender);
			switch (senderID)
			{
				case "ComboBox18":
					PrepareAndRequestItems(new Array("TextBoxRadio"));
					break;
				case "ComboBox14":
					PrepareAndRequestItems(new Array("TextBoxSegundaArma"));
					break;
			}
		}
	</script>
	<script language="JavaScript" type="text/javascript">
		function ___Button2_OnClientClick(sender)
		{
			ExecuteCommandRequest("Save","","","continue:___Button2_OnClientClick_Action1");
			return false;
		}
		function ___Button2_OnClientClick_Action1(sender)
		{
			alert('Alterada com Sucesso!');
			try {getParentPage().GetRadWindowManager().GetActiveWindow().Close();} catch (e) {};
			return false;
		}
	</script>
		
		<form id="Form1" runat="server">
			<asp:ScriptManager ID="MainScriptManager" runat="server"/>
			<telerik:RadAjaxPanel id="MainAjaxPanel" runat="server" class="c_MainAjaxPanel" ClientEvents-OnRequestStart="OnRequestStart" ClientEvents-OnResponseEnd="OnResponseEnd" LoadingPanelID="___Form1_AjaxLoading">
				<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labModuleTitle" runat="server" Text="<%$ Resources: Form1 %>" />
					</div>
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<telerik:RadToolBar id="gToolbar" runat="server" EnableRoundedCorners="True" EnableShadows="True" Height="29"
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="140">
							<Items>
								<telerik:RadToolBarButton id="Button1" runat="server" CssClass="Button1" CommandArgument="Button1" CommandName="Button1" TabIndex="25"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="26"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="27"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="28"
									ToolTip="Inicia edição no registro atual" />
							</Items>
						</telerik:RadToolBar>
					</div>
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#F90505"
						MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
					<telerik:RadComboBox id="ComboBoxStatus" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBoxStatus %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBoxStatus_OnItemsRequested" RenderMode="Classic" TabIndex="4" />
					<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
					<telerik:RadComboBox id="ComboBox2" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="3" />
					<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
					<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#000000"
						MaxLength="20" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="5" TextMode="SingleLine"
						WrapperCssClass="c_RadTextBox2_wrapper" />
					<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
					<telerik:RadDateTimePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus"
						DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" enabled="false"
						EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight"
						ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="2" TimeView-EndTime="23:00"
						TimeView-StartTime="00:00" Width="196px">
					</telerik:RadDateTimePicker>
					<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
					<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
					<telerik:RadComboBox id="TextBoxArmaDev" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TextBoxArmaDev %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TextBoxArmaDev_OnItemsRequested" RenderMode="Classic" TabIndex="15" />
					<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
					<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#000000"
						MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="7" TextMode="SingleLine"
						WrapperCssClass="c_RadTextBox4_wrapper" />
					<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
					<telerik:RadTextBox id="TextBoxMunicao" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="17" TextMode="SingleLine" WrapperCssClass="c_TextBoxMunicao_wrapper" />
					<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
					<telerik:RadComboBox id="ComboBox5" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox5 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox5_OnItemsRequested" RenderMode="Classic" TabIndex="6" />
					<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
					<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
					<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
					<telerik:RadComboBox id="TextBoxRadio" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TextBoxRadio %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TextBoxRadio_OnItemsRequested" RenderMode="Classic" TabIndex="21" />
					<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
					<telerik:RadComboBox id="ComboBox8" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox8 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox8_OnItemsRequested" RenderMode="Classic" TabIndex="8" />
					<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
					<telerik:RadComboBox id="TextBoxAlgema" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TextBoxAlgema %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TextBoxAlgema_OnItemsRequested" RenderMode="Classic" TabIndex="18" />
					<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
					<telerik:RadComboBox id="ComboBox10" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox10 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox10_OnItemsRequested" RenderMode="Classic" TabIndex="10" />
					<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
					<telerik:RadComboBox id="TextBoxColete" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TextBoxColete %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TextBoxColete_OnItemsRequested" RenderMode="Classic" TabIndex="20" />
					<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
					<telerik:RadComboBox id="ComboBox12" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox12 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox12_OnItemsRequested" RenderMode="Classic" TabIndex="9" />
					<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
					<telerik:RadComboBox id="TextBoxTonfa" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TextBoxTonfa %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TextBoxTonfa_OnItemsRequested" RenderMode="Classic" TabIndex="19" />
					<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
					<telerik:RadComboBox id="ComboBox14" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox14 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox14_OnItemsRequested" RenderMode="Classic" TabIndex="11" />
					<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
					<telerik:RadComboBox id="TextBoxSegundaArma" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TextBoxSegundaArma %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TextBoxSegundaArma_OnItemsRequested" RenderMode="Classic" TabIndex="22" />
					<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
					<telerik:RadTextBox id="TextBoxArmeiro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="20"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine" WrapperCssClass="c_TextBoxArmeiro_wrapper" />
					<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
					<telerik:RadDateTimePicker id="TextBoxDp2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus"
						DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True"
						HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
						ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="14" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="200px">
					</telerik:RadDateTimePicker>
					<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
					<telerik:RadTextBox id="RadTextBox8" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#000000"
						MaxLength="25" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="12" TextMode="SingleLine"
						WrapperCssClass="c_RadTextBox8_wrapper" />
					<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
					<telerik:RadTextBox id="TextBoxMunicaoSegArma" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
						MaxLength="25" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="23" TextMode="SingleLine"
						WrapperCssClass="c_TextBoxMunicaoSegArma_wrapper" />
					<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
					<telerik:RadTextBox id="RadTextBox10" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="24" TextMode="MultiLine" WrapperCssClass="c_RadTextBox10_wrapper" />
					<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label33" runat="server" Text="<%$ Resources: Label33 %>" />
						<telerik:RadLabel id="Label34" runat="server" />
						<telerik:RadLabel id="Label35" runat="server" Text="<%$ Resources: Label35 %>" />
						<telerik:RadLabel id="Label36" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label37" runat="server" Text="<%$ Resources: Label37 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<Div id="Line1">
					</Div>
					<telerik:RadLabel id="Label38" runat="server" Text="<%$ Resources: Label38 %>" />
					<telerik:RadComboBox id="TextBoxCarregador" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TextBoxCarregador %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TextBoxCarregador_OnItemsRequested" RenderMode="Classic" TabIndex="16" />
					<telerik:RadComboBox id="ComboBox17" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox17 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox17_OnItemsRequested" RenderMode="Classic" TabIndex="29" />
					<telerik:RadComboBox id="ComboBox18" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" enabled="false" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox18 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox18_OnItemsRequested" RenderMode="Classic" TabIndex="30" />
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
					setTimeout("var $j = jQuery.noConflict();$j('#RadTextBox1').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function ToolbarClickHandler(sender, args)
		{
			var CommandArgument = args.get_item().get_commandArgument();
			switch (CommandArgument)
			{
				case "Button1":
					New(this);return false;
				break;
				case "Button2":
					___Button2_OnClientClick(this);return false;
				break;
				case "Button3":
					Cancel(this);return false;
				break;
				case "Button10":
					Edit(this);return false;
				break;
			}
		}
		function ID_SAIDA_ARMARIA() { return document.getElementById("RadTextBox1").value; }
		function STATUS() { return $find("<%= ComboBoxStatus.ClientID %>").get_value(); }
		function GCM_RE() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function ARMEIRO() { return document.getElementById("RadTextBox2").value; }
		function DATA() { return document.getElementById("DatePicker1").value; }
		function ARMA_DEV() { return $find("<%= TextBoxArmaDev.ClientID %>").get_value(); }
		function MUNICAO_QTDE() { return document.getElementById("RadTextBox4").value; }
		function MUNICAO_DEV_QTDE() { return document.getElementById("TextBoxMunicao").value; }
		function CARREGADOR() { return $find("<%= ComboBox5.ClientID %>").get_value(); }
		function RADIOHT_DEV() { return $find("<%= TextBoxRadio.ClientID %>").get_value(); }
		function ALGEMA() { return $find("<%= ComboBox8.ClientID %>").get_value(); }
		function ALGEMA_DEV() { return $find("<%= TextBoxAlgema.ClientID %>").get_value(); }
		function COLETE() { return $find("<%= ComboBox10.ClientID %>").get_value(); }
		function COLETE_DEV() { return $find("<%= TextBoxColete.ClientID %>").get_value(); }
		function TONFA() { return $find("<%= ComboBox12.ClientID %>").get_value(); }
		function TONFA_DEV() { return $find("<%= TextBoxTonfa.ClientID %>").get_value(); }
		function SEG_ARMA() { return $find("<%= ComboBox14.ClientID %>").get_value(); }
		function SEG_ARMA_DEV() { return $find("<%= TextBoxSegundaArma.ClientID %>").get_value(); }
		function ARMEIRO_DEV() { return document.getElementById("TextBoxArmeiro").value; }
		function DATA_DEV() { return document.getElementById("TextBoxDp2").value; }
		function MUNICAO_QTDE_SEG() { return document.getElementById("RadTextBox8").value; }
		function MUNICAO_DEV_SEG() { return document.getElementById("TextBoxMunicaoSegArma").value; }
		function RESUMO() { return document.getElementById("RadTextBox10").value; }
		function CARREGADOR_DEV() { return $find("<%= TextBoxCarregador.ClientID %>").get_value(); }
		function ARMA() { return $find("<%= ComboBox17.ClientID %>").get_value(); }
		function RADIOHT() { return $find("<%= ComboBox18.ClientID %>").get_value(); }
		function EnableButtons()
		{
				try
				{
					var __PAGESTATE = "";
					var __PAGENUMBER = 0;
					var __PAGECOUNT = 0;
					var __ISPARAMETER = "";
					var __PERMISSION = "";
					var __ALLOWINSERT = "true";
					var __ALLOWUPDATE = "true";
					var __ALLOWREMOVE = "true";
					try { __ISPARAMETER = document.getElementById("__TABLEPARAMETER").value.toLowerCase(); } catch (e) { }
					try { __PERMISSION = document.getElementById("__PERMISSION").value; } catch (e) { }
					try { __ALLOWINSERT = __PERMISSION.toString().substr(__PERMISSION.indexOf("Insert:") + 7, __PERMISSION.indexOf(";", __PERMISSION.indexOf("Insert:")) - __PERMISSION.indexOf("Insert:") - 7).toLowerCase(); } catch (e) { }
					try { __ALLOWUPDATE = __PERMISSION.toString().substr(__PERMISSION.indexOf("Edit:") + 5, __PERMISSION.indexOf(";", __PERMISSION.indexOf("Edit:")) - __PERMISSION.indexOf("Edit:") - 5).toLowerCase(); } catch (e) { }
					try { __ALLOWREMOVE = __PERMISSION.toString().substr(__PERMISSION.indexOf("Remove:") + 7, __PERMISSION.indexOf(";", __PERMISSION.indexOf("Remove:")) - __PERMISSION.indexOf("Remove:") - 7).toLowerCase(); } catch (e) { }
					try { __PAGESTATE = document.getElementById("__PAGESTATE").value.toLowerCase(); } catch (e) { }
					try { __PAGENUMBER = parseInt(document.getElementById("__PAGENUMBER").value); } catch (e) { }
					try { __PAGECOUNT = parseInt(document.getElementById("__PAGECOUNT").value); } catch (e) { }
						EnableDisableToolbarButtons(gToolbar.id,"Button1",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button2",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button3",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button10",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
						DisableLink(Link6, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link7, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link8, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						DisableLink(Link9, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
					try
					{
						if (getParentPage() != null && getParentPage() != self)
						{
							getParentPage().EnableButtons();
						}
					}
					catch (ex)
					{
					}
				}
				catch (ex)
				{
				}
		}

		function LoadEditAuto() {
				$j("#RadTextBox1").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox2").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox4").bind("keydown", InitiateEditAuto);
				$j("#TextBoxMunicao").bind("keydown", InitiateEditAuto);
				$j("#TextBoxArmeiro").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox8").bind("keydown", InitiateEditAuto);
				$j("#TextBoxMunicaoSegArma").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox10").bind("keydown", InitiateEditAuto);
				$j("#ComboBoxStatus").bind("change", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#TextBoxArmaDev").bind("change", InitiateEditAuto);
				$j("#ComboBox5").bind("change", InitiateEditAuto);
				$j("#TextBoxRadio").bind("change", InitiateEditAuto);
				$j("#ComboBox8").bind("change", InitiateEditAuto);
				$j("#TextBoxAlgema").bind("change", InitiateEditAuto);
				$j("#ComboBox10").bind("change", InitiateEditAuto);
				$j("#TextBoxColete").bind("change", InitiateEditAuto);
				$j("#ComboBox12").bind("change", InitiateEditAuto);
				$j("#TextBoxTonfa").bind("change", InitiateEditAuto);
				$j("#ComboBox14").bind("change", InitiateEditAuto);
				$j("#TextBoxSegundaArma").bind("change", InitiateEditAuto);
				$j("#TextBoxCarregador").bind("change", InitiateEditAuto);
				$j("#ComboBox17").bind("change", InitiateEditAuto);
				$j("#ComboBox18").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
				$j("#TextBoxDp2").bind("change", InitiateEditAuto);
				$j("#TextBoxDp2_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label34").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label34").innerText = ""; }
					try { document.getElementById("Label36").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label36").innerText = ""; }
		}

	</script>
</html>
