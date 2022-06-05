<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.TB_INFO_CRIME, App_Web_4xdugpm1" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GMultiMedia.ascx" TagName="GMultiMedia" TagPrefix="gas" %>
<%@ Register Src="..\..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/TB_INFO_CRIME.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/TB_INFO_CRIME_USER.js?sv=1.127.2017" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/validation.js"></script>
	
	<script type="text/javascript">	   

		function Grid1Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid1ShouldDisable")[0] && $j("#Grid1ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function Grid2Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid2ShouldDisable")[0] && $j("#Grid2ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function RegisterClientValidateScript()
		{
			var $j = jQuery.noConflict();
			$j(document).ready(function() 
			{
				$j("#Form1").validationEngine()
			});
		}
		RegisterClientValidateScript();
		
	</script>
    <script type="text/javascript">	    
		var HasValidation = true;

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
				case "TxtBairro":
					AditionalFields = 
					{
						"TxtCidade" : jQuery("#TxtCidade")[0].control.get_value(),
					};
					break;
				case "TxtLogradouro":
					AditionalFields = 
					{
						"TxtBairro" : jQuery("#TxtBairro")[0].control.get_value(),
					};
					break;
				case "TxtCidade":
					AditionalFields = 
					{
						"TxtUF" : jQuery("#TxtUF")[0].control.get_value(),
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
				case "TxtCidade":
					PrepareAndRequestItems(new Array("TxtBairro", "TxtLogradouro"));
					break;
				case "TxtUF":
					PrepareAndRequestItems(new Array("TxtCidade", "TxtBairro", "TxtLogradouro"));
					break;
				case "TxtBairro":
					PrepareAndRequestItems(new Array("TxtLogradouro"));
					break;
			}
		}
	</script>
	<script language="JavaScript" type="text/javascript">
		function GridColumn6_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn9_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn10_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function DatePicker1_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox27_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="270">
							<Items>
								<telerik:RadToolBarButton id="Button1" runat="server" CssClass="Button1" CommandArgument="Button1" CommandName="Button1" TabIndex="34"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="35"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="36"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="37"
									ToolTip="Excluir registro atual" />
								<telerik:RadToolBarButton id="Button6" runat="server" CssClass="Button6" CommandArgument="Button6" CommandName="Button6" TabIndex="38"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="39"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button9" runat="server" CssClass="Button9" CommandArgument="Button9" CommandName="Button9" TabIndex="40"
									ToolTip="Especifica expressão de filtragem" />
								<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="41"
									ToolTip="Inicia edição no registro atual" />
							</Items>
						</telerik:RadToolBar>
					</div>
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label37" runat="server" Text="<%$ Resources: Label37 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label38" runat="server" Text="<%$ Resources: Label38 %>" />
						<telerik:RadLabel id="Label39" runat="server" />
						<telerik:RadLabel id="Label40" runat="server" Text="<%$ Resources: Label40 %>" />
						<telerik:RadLabel id="Label41" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label42" runat="server" Text="<%$ Resources: Label42 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<div style="position:absolute !important;left:14px;top:63px;width:868px;height:858px">
						<telerik:RadTabStrip id="TabControl1" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl1MultiPage"
							PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
							<Tabs>
								<telerik:RadTab id="TabItem1" runat="server" Selected="true" Text="<%$ Resources: TabPage1 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem2" runat="server" Text="<%$ Resources: TabPage2 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem3" runat="server" Text="<%$ Resources: TabPage3 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem4" runat="server" Text="<%$ Resources: TabPage4 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="832px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadTextBox id="RadTextBox18" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="21" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox18_wrapper" />
								<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
								<telerik:RadTextBox id="RadTextBox19" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="22" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox19_wrapper" />
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<telerik:RadTextBox id="RadTextBox20" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="23" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox20_wrapper" />
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
								<telerik:RadTextBox id="RadTextBox21" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="24" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox21_wrapper" />
								<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
								<telerik:RadTextBox id="RadTextBox22" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="25" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox22_wrapper" />
								<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
								<telerik:RadTextBox id="RadTextBox23" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="26" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox23_wrapper" />
								<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
								<telerik:RadTextBox id="RadTextBox24" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="27" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox24_wrapper" />
								<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
								<telerik:RadComboBox id="ComboBox2" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="28" />
								<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
								<telerik:RadComboBox id="ComboBox3" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="29" />
								<telerik:RadLabel id="Label33" runat="server" Text="<%$ Resources: Label33 %>" />
								<telerik:RadTextBox id="RadTextBox25" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="30" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox25_wrapper" />
								<telerik:RadLabel id="Label34" runat="server" Text="<%$ Resources: Label34 %>" />
								<telerik:RadTextBox id="RadTextBox26" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="31" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox26_wrapper" />
								<telerik:RadLabel id="Label35" runat="server" Text="<%$ Resources: Label35 %>" />
								<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True"
									ForeColor="#FF0000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox1_wrapper" />
								<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
								<telerik:RadDateTimePicker id="DatePicker1" runat="server" Calendar-ClientEvents-OnDateClick="HideDatePickerValidation"
									ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime"
									DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900"
									PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="1"
									TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="170px">
									<DateInput data-validation-engine="validate[funcCall[DatePicker1_Validation]]" data-validation-message="DATA não pode ser vazio!" />
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
								<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
								<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
								<telerik:RadTextBox id="RadTextBox3" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="3" TextMode="SingleLine" WrapperCssClass="c_RadTextBox3_wrapper" />
								<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
								<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="20"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine" WrapperCssClass="c_RadTextBox4_wrapper" />
								<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
								<telerik:RadTextBox id="RadTextBox5" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="5" TextMode="SingleLine" WrapperCssClass="c_RadTextBox5_wrapper" />
								<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
								<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="6" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
								<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
								<telerik:RadDateTimePicker id="DatePicker2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300"
									HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
									ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="7" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="276px">
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
								<telerik:RadTextBox id="RadTextBox7" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="8" TextMode="SingleLine" WrapperCssClass="c_RadTextBox7_wrapper" />
								<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
								<telerik:RadTextBox id="RadTextBox8" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="32" TextMode="SingleLine" WrapperCssClass="c_RadTextBox8_wrapper" />
								<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
								<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
								<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
								<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
								<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
								<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
								<telerik:RadTextBox id="TxtCEP" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="16" TextMode="SingleLine" WrapperCssClass="c_TxtCEP_wrapper" />
								<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
								<telerik:RadTextBox id="RadTextBox15" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="9" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox15_wrapper" />
								<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
								<asp:Button id="Button11" runat="server" CommandName="Button11" OnClick="___Button11_OnClick" TabIndex="17" Text="<%$ Resources: Button11 %>"
									/>
								<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="18" />
								<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
								<telerik:RadTextBox id="RadTextBox16" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="240" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox16_wrapper" />
								<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
								<telerik:RadTextBox id="RadTextBox17" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="20" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox17_wrapper" />
								<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
								<telerik:RadLabel id="LabBuscaRetorno" runat="server" />
								<gas:GMultiMedia id="GMultiMedia1" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="True" enabled="true"
									EncryptedFile="False" Height="281px" Left="582px" MaxFileSize="0" Path="~/Images/Delinquentes/" SaveAsFile="True"
									SessionHandlerObjectName="FOTO28567" ShowDownloadLink="False" ShowImage="True" TabIndex="45" Top="7px" Visible="true" Width="256px" />
								<telerik:RadTextBox id="RadTextBox27" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox27_Validation]]" data-validation-message="Nº não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_RadTextBox27_wrapper" />
								<telerik:RadLabel id="Label45" runat="server" Text="<%$ Resources: Label45 %>" />
								<telerik:RadComboBox id="TxtBairro" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtBairro %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___TxtBairro_OnItemsRequested" RenderMode="Classic" TabIndex="12" />
								<telerik:RadComboBox id="TxtUF" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtUF %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___TxtUF_OnItemsRequested" RenderMode="Classic" TabIndex="10" />
								<telerik:RadComboBox id="TxtTipoLogradouro" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtTipoLogradouro %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___TxtTipoLogradouro_OnItemsRequested" RenderMode="Classic" TabIndex="13" />
								<telerik:RadComboBox id="TxtLogradouro" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtLogradouro %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___TxtLogradouro_OnItemsRequested" RenderMode="Classic" TabIndex="14" />
								<telerik:RadComboBox id="TxtCidade" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtCidade %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___TxtCidade_OnItemsRequested" RenderMode="Classic" TabIndex="11" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
									OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
									OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
									OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="43" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid1_EditColumn" UniqueName="Grid1_EditColumn"/>
											<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="BOGM" DataFormatString="{0:##############0}" Exportable="True" FilterControlWidth="88"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="123"
												HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="116" MaxLength="15" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="BOPC" DataFormatString="{0:##############0}" Exportable="True" FilterControlWidth="88"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="123"
												HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="116" MaxLength="15" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ARTIGO_CRIMINAL" Exportable="True" FilterControlWidth="138" ForceExtractValue="Always"
												HeaderStyle-Width="173" HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-Width="166" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridDateTimeColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="DATA_PRISAO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy"
												Exportable="True" FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="160"
												HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="153" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True" />
											<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
											<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid1_DeleteColumn"/>
										</Columns>
										<EditFormSettings>
											<EditColumn ButtonType="ImageButton" />
										</EditFormSettings>
										<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
									</MasterTableView>
									<PagerStyle Mode="NextPrevAndNumeric" />
									<ClientSettings>
										<ClientEvents OnGridCreated="Grid1Created" />
									</ClientSettings>
								</telerik:RadGrid>
								<telerik:RadGrid id="Grid2" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
									OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid2_ItemCommand"
									OnItemCreated="Grid2_ItemCreated" OnItemDataBound="Grid2_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
									OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="44" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID" EditMode="InPlace" OnItemCreated="Grid2_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid2_EditColumn" UniqueName="Grid2_EditColumn"/>
											<telerik:GridBoundColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="OBJETO" Exportable="True" FilterControlWidth="273" ForceExtractValue="Always"
												HeaderStyle-Width="308" HeaderText="<%$ Resources: GridColumn9 %>" ItemStyle-Width="301" MaxLength="20" ReadOnly="False" Visible="True" />
											<telerik:GridDateTimeColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="DATA" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy" Exportable="True"
												FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="149" HeaderText="<%$ Resources: GridColumn10 %>"
												ItemStyle-Width="142" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True" />
											<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
											<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid2_DeleteColumn"/>
										</Columns>
										<EditFormSettings>
											<EditColumn ButtonType="ImageButton" />
										</EditFormSettings>
										<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
									</MasterTableView>
									<PagerStyle Mode="NextPrevAndNumeric" />
									<ClientSettings>
										<ClientEvents OnGridCreated="Grid2Created" />
									</ClientSettings>
								</telerik:RadGrid>
								<telerik:RadLabel id="Label43" runat="server" Text="<%$ Resources: Label43 %>" />
								<telerik:RadLabel id="Label44" runat="server" Text="<%$ Resources: Label44 %>" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage3" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="42" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage4" runat="server" BackColor="#FFFFFF">
								<asp:Panel id="Pager1" runat="server" HorizontalAlign="Left">
									<asp:Button id="__Pager1__Button1" runat="server" CommandName="Button1" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button2" runat="server" CommandName="Button2" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button3" runat="server" CommandName="Button3" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button4" runat="server" CommandName="Button4" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button5" runat="server" CommandName="Button5" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button6" runat="server" CommandName="Button6" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button7" runat="server" CommandName="Button7" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button8" runat="server" CommandName="Button8" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
									<asp:Button id="__Pager1__Button9" runat="server" CommandName="Button9" ForeColor="#000000" OnClick="__Pager1__Click"
										style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
								</asp:Panel>
								<div runat="server"  style="position:absolute !important;left:409px;top:20px;width:431px;height:756px;background-color:#FFFFFF;border-color:#DBD6D6;border-style:Solid;border-width:1px;overflow:auto" AutoExpandToContent="False" AutoExpandToContentMargin="0" EquateRepeaterRegionsWidth="True">
									<asp:Repeater id="Repeater1" runat="server" ClientIDMode="Static">
										<HeaderTemplate>
											<div id="GRepeaterHeader1" AutoExpandWidth="True">
												<asp:Button id="Button12" runat="server" CommandName="Button12" HasDatalistParent="true" OnClick="___Button12_OnClick" TabIndex="46"
													Text="<%$ Resources: Button12 %>" />
											</div>
										</HeaderTemplate>
										<ItemTemplate>
											<div id="GRepeaterBody1" AutoExpandToContent="False" AutoExpandToContentMargin="10" AutoExpandWidth="True" runat="server">
												<div id="GRepeaterBody1ChildLocator" runat="server" clientidmode="AutoID"></div>
												<gas:GMultiMedia id="GMultiMedia2" runat="server" BorderWidth="1" CanDownloadFile="False" CanUploadFile="false" enabled="true"
													EncryptedFile="False" Height="267px" Left="22px" MaxFileSize="0" Path="~/Images/Delinquentes/" SaveAsFile="True"
													SessionHandlerObjectName="URL28567" ShowDownloadLink="True" ShowImage="True" TabIndex="47" Top="8px" Visible="true" Width="380px" />
											</div>
										</ItemTemplate>
										<AlternatingItemTemplate>
											<div id="GRepeaterBodyAlt1" AutoExpandToContent="False" AutoExpandToContentMargin="10" AutoExpandWidth="True" runat="server">
												<div id="GRepeaterBodyAlt1ChildLocator" runat="server" clientidmode="AutoID"></div>
												<gas:GMultiMedia id="GMultiMedia3" runat="server" BorderWidth="1" CanDownloadFile="False" CanUploadFile="false" enabled="true"
													EncryptedFile="False" Height="267px" Left="22px" MaxFileSize="0" Path="~/Images/Delinquentes/" SaveAsFile="True"
													SessionHandlerObjectName="URL28567" ShowDownloadLink="True" ShowImage="True" TabIndex="48" Top="8px" Visible="true" Width="380px" />
											</div>
										</AlternatingItemTemplate>
									</asp:Repeater>
								</div>
							</telerik:RadPageView>
						</telerik:RadMultiPage>
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
					setTimeout("var $j = jQuery.noConflict();$j('#DatePicker1_dateInput').first().focus();", 200);
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
					Save(this);return false;
				break;
				case "Button3":
					Cancel(this);return false;
				break;
				case "Button4":
					Remove(this,true);return false;
				break;
				case "Button6":
					Previous(this);return false;
				break;
				case "Button7":
					Next(this);return false;
				break;
				case "Button9":
					Filter();return false;
				break;
				case "Button10":
					Edit(this);return false;
				break;
			}
		}
		function CICATRIZES() { return document.getElementById("RadTextBox18").value; }
		function OLHOS() { return document.getElementById("RadTextBox19").value; }
		function COMPLEICAO_FISICA() { return document.getElementById("RadTextBox20").value; }
		function CUTIS() { return document.getElementById("RadTextBox21").value; }
		function ALTURA() { return document.getElementById("RadTextBox22").value; }
		function CABELO() { return document.getElementById("RadTextBox23").value; }
		function BARBA() { return document.getElementById("RadTextBox24").value; }
		function SEXO() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function VIATURA() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function GUARNICAO() { return document.getElementById("RadTextBox25").value; }
		function EQUIPE() { return document.getElementById("RadTextBox26").value; }
		function ID() { return document.getElementById("RadTextBox1").value; }
		function DATA() { return document.getElementById("DatePicker1").value; }
		function NOME() { return document.getElementById("RadTextBox2").value; }
		function CPF() { return document.getElementById("RadTextBox3").value; }
		function RG() { return document.getElementById("RadTextBox4").value; }
		function MAE() { return document.getElementById("RadTextBox5").value; }
		function PAI() { return document.getElementById("RadTextBox6").value; }
		function DATA_NASC() { return document.getElementById("DatePicker2").value; }
		function NATURALIDADE() { return document.getElementById("RadTextBox7").value; }
		function NACIONALIDADE() { return document.getElementById("RadTextBox8").value; }
		function CEP() { return document.getElementById("TxtCEP").value; }
		function TELEFONE() { return document.getElementById("RadTextBox15").value; }
		function TIPO_OCORRENCIA() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function TATUAGEM() { return document.getElementById("RadTextBox16").value; }
		function VULGO() { return document.getElementById("RadTextBox17").value; }
		function BAIRRO() { return $find("<%= TxtBairro.ClientID %>").get_value(); }
		function UF() { return $find("<%= TxtUF.ClientID %>").get_value(); }
		function TIPO_LOGRADOURO() { return $find("<%= TxtTipoLogradouro.ClientID %>").get_value(); }
		function LOGRADOURO() { return $find("<%= TxtLogradouro.ClientID %>").get_value(); }
		function CIDADE() { return $find("<%= TxtCidade.ClientID %>").get_value(); }
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
						EnableDisableToolbarButtons(gToolbar.id,"Button4",!IsAjaxProcessing && __PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button6",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button9",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
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
				$j("#RadTextBox18").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox19").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox20").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox21").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox22").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox23").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox24").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox25").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox26").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox1").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox2").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox3").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox4").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox5").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox6").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox7").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox8").bind("keydown", InitiateEditAuto);
				$j("#TxtCEP").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox15").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox16").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox17").bind("keydown", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#TxtBairro").bind("change", InitiateEditAuto);
				$j("#TxtUF").bind("change", InitiateEditAuto);
				$j("#TxtTipoLogradouro").bind("change", InitiateEditAuto);
				$j("#TxtLogradouro").bind("change", InitiateEditAuto);
				$j("#TxtCidade").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker2").bind("change", InitiateEditAuto);
				$j("#DatePicker2_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label39").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label39").innerText = ""; }
					try { document.getElementById("Label41").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label41").innerText = ""; }
		}

	</script>
</html>
