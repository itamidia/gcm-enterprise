<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.TB_COLABORADOR, App_Web_imjh5exu" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GMultiMedia.ascx" TagName="GMultiMedia" TagPrefix="gas" %>
<%@ Register Src="..\..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/TB_COLABORADOR.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/TB_COLABORADOR_USER.js?sv=1.127.2017" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/validation.js"></script>
	
	<script type="text/javascript">	   

		function Grid3Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid3ShouldDisable")[0] && $j("#Grid3ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function Grid2Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid2ShouldDisable")[0] && $j("#Grid2ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function Grid1Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid1ShouldDisable")[0] && $j("#Grid1ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
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
				case "GridColumn15_ComboBox":
					AditionalFields = 
					{
						"GridColumn16_ComboBox" : jQuery("#GridColumn16_ComboBox")[0].control.get_value(),
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
				case "GridColumn16_ComboBox":
					PrepareAndRequestItems(new Array("GridColumn15_ComboBox"));
					break;
			}
		}
	</script>
	<script language="JavaScript" type="text/javascript">
		function GridColumn22_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn23_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox3_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox4_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox5_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox6_Validation(field, rules, i, options) {
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="300">
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
						<telerik:RadLabel id="Label39" runat="server" Text="<%$ Resources: Label39 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label40" runat="server" Text="<%$ Resources: Label40 %>" />
						<telerik:RadLabel id="Label41" runat="server" />
						<telerik:RadLabel id="Label42" runat="server" Text="<%$ Resources: Label42 %>" />
						<telerik:RadLabel id="Label43" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label44" runat="server" Text="<%$ Resources: Label44 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<div style="position:absolute !important;left:24px;top:61px;width:941px;height:797px">
						<telerik:RadTabStrip id="TabControl1" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl1MultiPage"
							PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
							<Tabs>
								<telerik:RadTab id="TabItem1" runat="server" Selected="true" Text="<%$ Resources: TabPage1 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem2" runat="server" Text="<%$ Resources: TabPage2 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem6" runat="server" Text="<%$ Resources: TabPage3 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="771px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadLabel id="Label37" runat="server" Text="<%$ Resources: Label37 %>" />
								<gas:GMultiMedia id="GMultiMedia1" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="True" enabled="true"
									EncryptedFile="False" Height="296px" Left="685px" MaxFileSize="0" SaveAsFile="False" SessionHandlerObjectName="FOTO28595"
									ShowDownloadLink="False" ShowImage="True" TabIndex="32" Top="89px" Visible="true" Width="240px" />
								<telerik:RadTextBox id="TxtTipoLogradouro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="24" TextMode="SingleLine"
									WrapperCssClass="c_TxtTipoLogradouro_wrapper" />
								<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
								<telerik:RadTextBox id="TxtLogradouro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="25" TextMode="SingleLine"
									WrapperCssClass="c_TxtLogradouro_wrapper" />
								<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
								<telerik:RadTextBox id="RadTextBox23" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="26" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox23_wrapper" />
								<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
								<telerik:RadTextBox id="TxtBairro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="27" TextMode="SingleLine" WrapperCssClass="c_TxtBairro_wrapper" />
								<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
								<telerik:RadTextBox id="TxtCidade" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="28" TextMode="SingleLine" WrapperCssClass="c_TxtCidade_wrapper" />
								<telerik:RadLabel id="Label33" runat="server" Text="<%$ Resources: Label33 %>" />
								<telerik:RadTextBox id="TxtUF" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="2"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="29" TextMode="SingleLine" WrapperCssClass="c_TxtUF_wrapper" />
								<telerik:RadLabel id="Label34" runat="server" Text="<%$ Resources: Label34 %>" />
								<telerik:RadTextBox id="TxtCEP" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="30" TextMode="SingleLine" WrapperCssClass="c_TxtCEP_wrapper" />
								<telerik:RadLabel id="Label35" runat="server" Text="<%$ Resources: Label35 %>" />
								<telerik:RadTextBox id="RadTextBox28" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="31" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox28_wrapper" />
								<telerik:RadLabel id="Label36" runat="server" Text="<%$ Resources: Label36 %>" />
								<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True"
									ForeColor="#FF0000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox1_wrapper" />
								<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
								<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
								<telerik:RadTextBox id="RadTextBox3" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox3_Validation]]"
									data-validation-message="NOME não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="3" TextMode="SingleLine" WrapperCssClass="c_RadTextBox3_wrapper" />
								<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
								<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox4_Validation]]"
									data-validation-message="MATRICULA PREFEITURA não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine" WrapperCssClass="c_RadTextBox4_wrapper" />
								<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
								<telerik:RadTextBox id="RadTextBox5" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox5_Validation]]"
									data-validation-message="RG não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="15"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="5" TextMode="SingleLine" WrapperCssClass="c_RadTextBox5_wrapper" />
								<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
								<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox6_Validation]]"
									data-validation-message="CPF não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="6" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
								<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
								<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
								<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
								<telerik:RadDatePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="33" Width="135px">
								</telerik:RadDatePicker>
								<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
								<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="2" />
								<telerik:RadTextBox id="RadTextBox8" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="8" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox8_wrapper" />
								<telerik:RadTextBox id="RadTextBox7" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="7" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox7_wrapper" />
								<telerik:RadTextBox id="RadTextBox9" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="20"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine" WrapperCssClass="c_RadTextBox9_wrapper" />
								<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
								<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
								<telerik:RadTextBox id="RadTextBox11" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="10" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox11_wrapper" />
								<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
								<telerik:RadTextBox id="RadTextBox12" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="12" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox12_wrapper" />
								<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
								<telerik:RadDatePicker id="DatePicker2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="11" Width="130px">
								</telerik:RadDatePicker>
								<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
								<telerik:RadDatePicker id="DatePicker3" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="14" Width="130px">
								</telerik:RadDatePicker>
								<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
								<telerik:RadDatePicker id="DatePicker4" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="15" Width="130px">
								</telerik:RadDatePicker>
								<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
								<telerik:RadTextBox id="RadTextBox13" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="20" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="16" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox13_wrapper" />
								<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
								<telerik:RadTextBox id="RadTextBox14" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="17" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox14_wrapper" />
								<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
								<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
								<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
								<telerik:RadTextBox id="RadTextBox17" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="18" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox17_wrapper" />
								<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
								<telerik:RadTextBox id="RadTextBox15" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox15_wrapper" />
								<telerik:RadTextBox id="RadTextBox16" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="20" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox16_wrapper" />
								<telerik:RadTextBox id="RadTextBox18" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="21" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox18_wrapper" />
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<telerik:RadTextBox id="RadTextBox19" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="22" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox19_wrapper" />
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
								<telerik:RadTextBox id="RadTextBox20" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="25" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="23" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox20_wrapper" />
								<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
								<telerik:RadTextBox id="RadTextBox29" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="19" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="9" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox29_wrapper" />
								<asp:Button id="Button11" runat="server" CommandName="Button11" OnClick="___Button11_OnClick" TabIndex="46" Text="<%$ Resources: Button11 %>"
									/>
								<telerik:RadLabel id="LabBuscaRetorno" runat="server" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<div style="position:absolute !important;left:25px;top:27px;width:887px;height:720px">
									<telerik:RadTabStrip id="TabControl2" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl2MultiPage"
										PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
										<Tabs>
											<telerik:RadTab id="TabItem3" runat="server" Selected="true" Text="<%$ Resources: TabPage4 %>">
											</telerik:RadTab>
											<telerik:RadTab id="TabItem4" runat="server" Text="<%$ Resources: TabPage5 %>">
											</telerik:RadTab>
											<telerik:RadTab id="TabItem5" runat="server" Text="<%$ Resources: TabPage6 %>">
											</telerik:RadTab>
										</Tabs>
									</telerik:RadTabStrip>
									<telerik:RadMultiPage runat="server" ID="TabControl2MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="694px" SelectedIndex="0">
										<telerik:RadPageView id="TabPage4" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid3" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
												OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid3_ItemCommand"
												OnItemCreated="Grid3_ItemCreated" OnItemDataBound="Grid3_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
												OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="45" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ESCOLA_ID" EditMode="InPlace" OnItemCreated="Grid3_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid3_EditColumn" UniqueName="Grid3_EditColumn"/>
														<telerik:GridBoundColumn UniqueName="GridColumn19" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_CURSO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn19 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn20" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_INSTITUICAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn20 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn21" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_ANO_INICIO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn21 %>" ItemStyle-Width="86" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn22" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_ANO_CONCLUSAO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn22 %>" ItemStyle-Width="86" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn23" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_CARGA_HOR" DataFormatString="{0:#########0}" Exportable="True"
															FilterControlWidth="58" FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn23 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86"
															MaxLength="10" ReadOnly="False" Visible="True" />
														<telerik:GridBoundColumn UniqueName="GridColumn24" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_NIVEL" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn24 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn25" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_CIDADE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn25 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn26" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_UF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn26 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True"
															/>
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
														<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid3_DeleteColumn"/>
													</Columns>
													<EditFormSettings>
														<EditColumn ButtonType="ImageButton" />
													</EditFormSettings>
													<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="true">
													<Scrolling AllowScroll="True"/>
													<ClientEvents OnGridCreated="Grid3Created" />
												<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
										<telerik:RadPageView id="TabPage5" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid2" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
												OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid2_ItemCommand" OnItemCreated="Grid2_ItemCreated"
												OnItemDataBound="Grid2_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="30"
												RenderMode="Classic" ShowGroupPanel="False" TabIndex="44" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="CUR_ID" EditMode="InPlace" OnItemCreated="Grid2_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid2_EditColumn" UniqueName="Grid2_EditColumn"/>
														<telerik:GridBoundColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_CURSO" Exportable="True" FilterControlWidth="96" ForceExtractValue="Always"
															HeaderStyle-Width="131" HeaderText="<%$ Resources: GridColumn10 %>" ItemStyle-Width="124" MaxLength="30" ReadOnly="False"
															Visible="True" />
														<telerik:GridBoundColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_INSTITUICAO" Exportable="True" FilterControlWidth="95" ForceExtractValue="Always"
															HeaderStyle-Width="130" HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-Width="123" MaxLength="50" ReadOnly="False"
															Visible="True" />
														<telerik:GridDateTimeColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_ANO_INICIO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn12 %>" ItemStyle-Width="86" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_ANO_CONCLUSAO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-Width="86" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_CARGA_HORARIA" DataFormatString="{0:#########0}" Exportable="True"
															FilterControlWidth="58" FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn14 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86"
															MaxLength="10" ReadOnly="False" Visible="True" />
														<telerik:GridTemplateColumn UniqueName="GridColumn16" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="CUR_UF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															GroupByExpression="CUR_UF CUR_UF Group By CUR_UF" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn16 %>"
															ItemStyle-Width="86" ReadOnly="False" SortExpression="CUR_UF" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn16_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn16_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="78" ClientIDMode="Static" OnClientSelectedIndexChanged="ClientRefreshCombos" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn16_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn16", Eval("CUR_UF").ToString())%>' Value='<%#Eval("CUR_UF").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridTemplateColumn UniqueName="GridColumn15" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="CUR_CIDADE" Exportable="True" FilterControlWidth="90" ForceExtractValue="Always"
															GroupByExpression="CUR_CIDADE CUR_CIDADE Group By CUR_CIDADE" HeaderStyle-Width="125" HeaderText="<%$ Resources: GridColumn15 %>"
															ItemStyle-Width="118" ReadOnly="False" SortExpression="CUR_CIDADE" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn15_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn15_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="110" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn15_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn15", Eval("CUR_CIDADE").ToString())%>' Value='<%#Eval("CUR_CIDADE").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
														<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid2_DeleteColumn"/>
													</Columns>
													<EditFormSettings>
														<EditColumn ButtonType="ImageButton" />
													</EditFormSettings>
													<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="true">
													<Scrolling AllowScroll="True"/>
													<ClientEvents OnGridCreated="Grid2Created" />
												<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
										<telerik:RadPageView id="TabPage6" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
												OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand" OnItemCreated="Grid1_ItemCreated"
												OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="30"
												RenderMode="Classic" ShowGroupPanel="False" TabIndex="43" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="FERIAS_ID" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_DESCRICAO" Exportable="True" FilterControlWidth="178" ForceExtractValue="Always"
															HeaderStyle-Width="213" HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="206" MaxLength="50" ReadOnly="False" Visible="True"
															/>
														<telerik:GridTemplateColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="FERIAS_TIPO_FOLGA" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
															GroupByExpression="FERIAS_TIPO_FOLGA FERIAS_TIPO_FOLGA Group By FERIAS_TIPO_FOLGA" HeaderStyle-Width="143"
															HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="136" ReadOnly="False" SortExpression="FERIAS_TIPO_FOLGA" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn4_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn4_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="128" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn4_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn4", Eval("FERIAS_TIPO_FOLGA").ToString())%>' Value='<%#Eval("FERIAS_TIPO_FOLGA").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridDateTimeColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_DATA_INICIO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy"
															Exportable="True" FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-Width="86" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_DATA_TERMINO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy"
															Exportable="True" FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="86" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_RESUMO" Exportable="True" FilterControlWidth="158" ForceExtractValue="Always"
															HeaderStyle-Width="193" HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="186" MaxLength="10" ReadOnly="False" Visible="True"
															/>
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
													</Columns>
													<CommandItemSettings ShowAddNewRecordButton="False" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="true">
													<Scrolling AllowScroll="True"/>
													<ClientEvents OnGridCreated="Grid1Created" />
												<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
									</telerik:RadMultiPage>
								</div>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage3" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="42" ViewMode="Design" />
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
		function TIPO_LOGRADOURO() { return document.getElementById("TxtTipoLogradouro").value; }
		function LOGRADOURO() { return document.getElementById("TxtLogradouro").value; }
		function NUMERO() { return document.getElementById("RadTextBox23").value; }
		function BAIRRO() { return document.getElementById("TxtBairro").value; }
		function CIDADE() { return document.getElementById("TxtCidade").value; }
		function UF() { return document.getElementById("TxtUF").value; }
		function CEP() { return document.getElementById("TxtCEP").value; }
		function EMAIL() { return document.getElementById("RadTextBox28").value; }
		function ID() { return document.getElementById("RadTextBox1").value; }
		function NOME() { return document.getElementById("RadTextBox3").value; }
		function RG_FUNCIONAL_PMJ() { return document.getElementById("RadTextBox4").value; }
		function RG() { return document.getElementById("RadTextBox5").value; }
		function CPF() { return document.getElementById("RadTextBox6").value; }
		function DATA_NASC() { return document.getElementById("DatePicker1").value; }
		function STATUS() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function MAE() { return document.getElementById("RadTextBox8").value; }
		function PAI() { return document.getElementById("RadTextBox7").value; }
		function CARTEIRA_TRABALHO() { return document.getElementById("RadTextBox9").value; }
		function CNH() { return document.getElementById("RadTextBox11").value; }
		function CATEG_CNH() { return document.getElementById("RadTextBox12").value; }
		function VALIDADE_CNH() { return document.getElementById("DatePicker2").value; }
		function DATA_ADMISSAO() { return document.getElementById("DatePicker3").value; }
		function DATA_DEMISSAO() { return document.getElementById("DatePicker4").value; }
		function FUNCAO() { return document.getElementById("RadTextBox13").value; }
		function TIPO_SANGUINEO() { return document.getElementById("RadTextBox14").value; }
		function FATOR_RH() { return document.getElementById("RadTextBox17").value; }
		function NATURALIDADE() { return document.getElementById("RadTextBox15").value; }
		function NACIONALIDADE() { return document.getElementById("RadTextBox16").value; }
		function TELEFONE() { return document.getElementById("RadTextBox18").value; }
		function CELULAR() { return document.getElementById("RadTextBox19").value; }
		function CONTATO() { return document.getElementById("RadTextBox20").value; }
		function TITULO_ELEITOR() { return document.getElementById("RadTextBox29").value; }
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
				$j("#TxtTipoLogradouro").bind("keydown", InitiateEditAuto);
				$j("#TxtLogradouro").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox23").bind("keydown", InitiateEditAuto);
				$j("#TxtBairro").bind("keydown", InitiateEditAuto);
				$j("#TxtCidade").bind("keydown", InitiateEditAuto);
				$j("#TxtUF").bind("keydown", InitiateEditAuto);
				$j("#TxtCEP").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox28").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox1").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox3").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox4").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox5").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox6").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox8").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox7").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox9").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox11").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox12").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox13").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox14").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox17").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox15").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox16").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox18").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox19").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox20").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox29").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker2").bind("change", InitiateEditAuto);
				$j("#DatePicker2_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker3").bind("change", InitiateEditAuto);
				$j("#DatePicker3_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker4").bind("change", InitiateEditAuto);
				$j("#DatePicker4_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label41").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label41").innerText = ""; }
					try { document.getElementById("Label43").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label43").innerText = ""; }
		}

	</script>
</html>
