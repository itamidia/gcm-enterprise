<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Cadastro_GCM, App_Web_imjh5exu" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GMultiMedia.ascx" TagName="GMultiMedia" TagPrefix="gas" %>
<%@ Register Src="..\..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Cadastro_GCM.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Cadastro_GCM_USER.js?sv=1.127.2017" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/validation.js"></script>
	
	<script type="text/javascript">	   

		function Grid3Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid3ShouldDisable")[0] && $j("#Grid3ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function Grid4Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid4ShouldDisable")[0] && $j("#Grid4ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function Grid5Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid5ShouldDisable")[0] && $j("#Grid5ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function Grid6Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid6ShouldDisable")[0] && $j("#Grid6ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
		function Grid7Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid7ShouldDisable")[0] && $j("#Grid7ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
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
	</script>
	<script language="JavaScript" type="text/javascript">
		function GridColumn41_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn40_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn42_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn43_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn44_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn45_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn46_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn47_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn51_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn52_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn53_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn55_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn56_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn78_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn79_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn80_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn81_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function DatePicker1_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox4_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox28_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox1_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox30_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ___ComboBox1_OnBlur(sender)
		{
			ValidateCombo(sender);
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="233">
							<Items>
								<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="47"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="48"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="49"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button5" runat="server" CssClass="Button5" CommandArgument="Button5" CommandName="Button5" TabIndex="50"
									ToolTip="Excluir registro atual" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="51"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button8" runat="server" CssClass="Button8" CommandArgument="Button8" CommandName="Button8" TabIndex="52"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button11" runat="server" CssClass="Button11" CommandArgument="Button11" CommandName="Button11" TabIndex="53"
									ToolTip="Inicia edição no registro atual" />
							</Items>
						</telerik:RadToolBar>
						<asp:Button id="Button12" runat="server" CommandName="Button12" OnClick="___Button12_OnClick" TabIndex="54" Text="<%$ Resources: Button12 %>" />
						<asp:Button id="Button13" runat="server" CommandName="Button13" OnClick="___Button13_OnClick" TabIndex="55" Text="<%$ Resources: Button13 %>" />
						<asp:Button id="Button14" runat="server" CommandName="Button14" OnClick="___Button14_OnClick" TabIndex="57" Text="<%$ Resources: Button14 %>" />
					</div>
					<div style="position:absolute !important;left:10px;top:46px;width:1078px;height:650px">
						<telerik:RadTabStrip id="TabControl1" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl1MultiPage"
							PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
							<Tabs>
								<telerik:RadTab id="TabItem1" runat="server" Selected="true" Text="<%$ Resources: TabPage1 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem2" runat="server" Text="<%$ Resources: TabPage2 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem3" runat="server" Text="<%$ Resources: TabPage3 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem9" runat="server" Text="<%$ Resources: TabPage8 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="0" BorderStyle="Solid" Width="100%" Height="624px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
								<gas:GMultiMedia id="GMultiMedia1" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="True" enabled="true"
									EncryptedFile="False" Height="230px" Left="790px" MaxFileSize="0" SaveAsFile="False" SessionHandlerObjectName="GCM_FOTO23142"
									ShowDownloadLink="False" ShowImage="True" TabIndex="40" Top="94px" Visible="true" Width="272px" />
								<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#FE0000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
								<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
								<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox2_Validation]]"
									data-validation-message="NOME não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="3" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
								<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
								<telerik:RadDatePicker id="DatePicker1" runat="server" Calendar-ClientEvents-OnDateClick="HideDatePickerValidation"
									ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy" DatePickerType="Date" DatePopupButton-ToolTip="Select date"
									EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight"
									ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="6" Width="163px">
									<DateInput data-validation-engine="validate[funcCall[DatePicker1_Validation]]" data-validation-message="DATA_NASC não pode ser vazio!" />
								</telerik:RadDatePicker>
								<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
								<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
								<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox4_Validation]]"
									data-validation-message="RG não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="15"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="8" TextMode="SingleLine" WrapperCssClass="c_RadTextBox4_wrapper" />
								<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
								<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
								<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
								<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
								<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
								<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
								<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
								<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
								<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
								<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
								<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
								<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
								<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
								<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="41" Text="<%$ Resources: Button1 %>" />
								<telerik:RadLabel id="Label38" runat="server" Text="<%$ Resources: Label38 %>" />
								<telerik:RadLabel id="Label39" runat="server" Text="<%$ Resources: Label39 %>" />
								<telerik:RadLabel id="LabBuscaRetorno" runat="server" />
								<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
								<telerik:RadLabel id="Label40" runat="server" Text="<%$ Resources: Label40 %>" />
								<telerik:RadLabel id="Label41" runat="server" Text="<%$ Resources: Label41 %>" />
								<telerik:RadTextBox id="RadTextBox28" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox28_Validation]]" data-validation-message="RE_MATRICULA não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="20" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_RadTextBox28_wrapper" />
								<telerik:RadLabel id="Label42" runat="server" Text="<%$ Resources: Label42 %>" />
								<telerik:RadComboBox id="ComboBox1" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
									CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox1_Validation]]"
									data-validation-message="GCM_STATUS não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientBlur="___ComboBox1_OnBlur" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="5" />
								<telerik:RadLabel id="Label45" runat="server" Text="<%$ Resources: Label45 %>" />
								<telerik:RadTextBox id="RadTextBox30" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox30_Validation]]" data-validation-message="CPF não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="7" TextMode="SingleLine" WrapperCssClass="c_RadTextBox30_wrapper" />
								<telerik:RadLabel id="Label46" runat="server" Text="<%$ Resources: Label46 %>" />
								<telerik:RadTextBox id="RadTextBox31" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="20" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox31_wrapper" />
								<telerik:RadTextBox id="RadTextBox37" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="9" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox37_wrapper" />
								<telerik:RadDatePicker id="DatePicker13" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="10" Width="185px">
								</telerik:RadDatePicker>
								<telerik:RadTextBox id="RadTextBox38" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="11" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox38_wrapper" />
								<telerik:RadTextBox id="RadTextBox39" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="12" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox39_wrapper" />
								<telerik:RadTextBox id="RadTextBox40" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="20" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox40_wrapper" />
								<telerik:RadTextBox id="RadTextBox46" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="22" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox46_wrapper" />
								<telerik:RadTextBox id="RadTextBox47" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="23" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox47_wrapper" />
								<telerik:RadTextBox id="RadTextBox48" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="24" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox48_wrapper" />
								<telerik:RadTextBox id="RadTextBox49" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="25" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox49_wrapper" />
								<telerik:RadTextBox id="RadTextBox50" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="26" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox50_wrapper" />
								<telerik:RadTextBox id="RadTextBox51" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="27" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox51_wrapper" />
								<telerik:RadTextBox id="RadTextBox52" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="28" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox52_wrapper" />
								<telerik:RadTextBox id="RadTextBox53" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="29" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox53_wrapper" />
								<telerik:RadTextBox id="RadTextBox54" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="30" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox54_wrapper" />
								<telerik:RadComboBox id="TxtTipoLogradouro" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtTipoLogradouro %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___TxtTipoLogradouro_OnItemsRequested" RenderMode="Classic" TabIndex="17" />
								<telerik:RadTextBox id="RadTextBox56" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox56_wrapper" />
								<telerik:RadLabel id="Label50" runat="server" Text="<%$ Resources: Label50 %>" />
								<telerik:RadTextBox id="TxtCidade" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_TxtCidade_wrapper" />
								<telerik:RadTextBox id="TxtBairro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="16" TextMode="SingleLine" WrapperCssClass="c_TxtBairro_wrapper" />
								<telerik:RadTextBox id="TxtLogradouro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="18" TextMode="SingleLine"
									WrapperCssClass="c_TxtLogradouro_wrapper" />
								<telerik:RadTextBox id="TxtCEP" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="20" TextMode="SingleLine" WrapperCssClass="c_TxtCEP_wrapper" />
								<telerik:RadTextBox id="TxtUF" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="2"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="14" TextMode="SingleLine" WrapperCssClass="c_TxtUF_wrapper" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<telerik:RadLabel id="Label33" runat="server" Text="<%$ Resources: Label33 %>" />
								<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
								<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
								<telerik:RadLabel id="Label35" runat="server" Text="<%$ Resources: Label35 %>" />
								<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
								<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
								<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
								<telerik:RadTextBox id="RadTextBox32" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="21" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox32_wrapper" />
								<telerik:RadTextBox id="RadTextBox34" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="34" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox34_wrapper" />
								<telerik:RadDatePicker id="DatePicker8" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="35" Width="180px">
								</telerik:RadDatePicker>
								<telerik:RadDatePicker id="DatePicker9" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="31" Width="225px">
								</telerik:RadDatePicker>
								<telerik:RadDatePicker id="DatePicker10" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="36" Width="180px">
								</telerik:RadDatePicker>
								<telerik:RadLabel id="Label47" runat="server" Text="<%$ Resources: Label47 %>" />
								<telerik:RadDatePicker id="DatePicker11" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="37" Width="198px">
								</telerik:RadDatePicker>
								<telerik:RadDatePicker id="DatePicker12" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="38" Width="198px">
								</telerik:RadDatePicker>
								<telerik:RadTextBox id="RadTextBox35" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="20" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="39" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox35_wrapper" />
								<telerik:RadTextBox id="RadTextBox36" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="32" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox36_wrapper" />
								<telerik:RadLabel id="Label48" runat="server" Text="<%$ Resources: Label48 %>" />
								<telerik:RadTextBox id="RadTextBox55" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="20" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="33" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox55_wrapper" />
								<telerik:RadLabel id="Label49" runat="server" Text="<%$ Resources: Label49 %>" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage3" runat="server" BackColor="#FFFFFF">
								<div style="position:absolute !important;left:16px;top:7px;width:1043px;height:588px">
									<telerik:RadTabStrip id="TabControl2" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl2MultiPage"
										PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
										<Tabs>
											<telerik:RadTab id="TabItem4" runat="server" Selected="true" Text="<%$ Resources: TabPage4 %>">
											</telerik:RadTab>
											<telerik:RadTab id="TabItem5" runat="server" Text="<%$ Resources: TabPage5 %>">
											</telerik:RadTab>
											<telerik:RadTab id="TabItem6" runat="server" Text="<%$ Resources: TabPage6 %>">
											</telerik:RadTab>
											<telerik:RadTab id="TabItem7" runat="server" Text="<%$ Resources: TabPage7 %>">
											</telerik:RadTab>
											<telerik:RadTab id="TabItem8" runat="server" Text="<%$ Resources: TabPage9 %>">
											</telerik:RadTab>
										</Tabs>
									</telerik:RadTabStrip>
									<telerik:RadMultiPage runat="server" ID="TabControl2MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="562px" SelectedIndex="0">
										<telerik:RadPageView id="TabPage4" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid3" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
												OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid3_ItemCommand" OnItemCreated="Grid3_ItemCreated"
												OnItemDataBound="Grid3_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
												RenderMode="Classic" ShowGroupPanel="False" TabIndex="43" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ESCOLA_ID" EditMode="InPlace" OnItemCreated="Grid3_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid3_EditColumn" UniqueName="Grid3_EditColumn"/>
														<telerik:GridBoundColumn UniqueName="GridColumn59" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_CURSO" Exportable="True" FilterControlWidth="77" ForceExtractValue="Always"
															HeaderStyle-Width="112" HeaderText="<%$ Resources: GridColumn59 %>" ItemStyle-Width="105" MaxLength="30" ReadOnly="False"
															Visible="True" />
														<telerik:GridBoundColumn UniqueName="GridColumn60" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_INSTITUICAO" Exportable="True" FilterControlWidth="94" ForceExtractValue="Always"
															HeaderStyle-Width="129" HeaderText="<%$ Resources: GridColumn60 %>" ItemStyle-Width="122" MaxLength="50" ReadOnly="False"
															Visible="True" />
														<telerik:GridDateTimeColumn UniqueName="GridColumn61" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_ANO_INICIO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="119"
															HeaderText="<%$ Resources: GridColumn61 %>" ItemStyle-Width="112" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn62" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_ANO_CONCLUSAO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="123"
															HeaderText="<%$ Resources: GridColumn62 %>" ItemStyle-Width="116" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn66" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="ESCOLA_CARGA_HOR" DataFormatString="{0:##################0}" Exportable="True"
															FilterControlWidth="58" FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn66 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86"
															MaxLength="19" ReadOnly="False" Visible="True" />
														<telerik:GridTemplateColumn UniqueName="GridColumn63" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="ESCOLA_NIVEL" Exportable="True" FilterControlWidth="118" ForceExtractValue="Always"
															GroupByExpression="ESCOLA_NIVEL ESCOLA_NIVEL Group By ESCOLA_NIVEL" HeaderStyle-Width="153" HeaderText="<%$ Resources: GridColumn63 %>"
															ItemStyle-Width="146" ReadOnly="False" SortExpression="ESCOLA_NIVEL" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn63_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn63_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="138" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn63_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn63", Eval("ESCOLA_NIVEL").ToString())%>' Value='<%#Eval("ESCOLA_NIVEL").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridTemplateColumn UniqueName="GridColumn64" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="ESCOLA_CIDADE" Exportable="True" FilterControlWidth="72" ForceExtractValue="Always"
															GroupByExpression="ESCOLA_CIDADE ESCOLA_CIDADE Group By ESCOLA_CIDADE" HeaderStyle-Width="107"
															HeaderText="<%$ Resources: GridColumn64 %>" ItemStyle-Width="100" ReadOnly="False" SortExpression="ESCOLA_CIDADE" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn64_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn64_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="92" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn64_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn64", Eval("ESCOLA_CIDADE").ToString())%>' Value='<%#Eval("ESCOLA_CIDADE").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridTemplateColumn UniqueName="GridColumn65" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="ESCOLA_UF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															GroupByExpression="ESCOLA_UF ESCOLA_UF Group By ESCOLA_UF" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn65 %>"
															ItemStyle-Width="86" ReadOnly="False" SortExpression="ESCOLA_UF" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn65_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn65_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="78" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn65_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn65", Eval("ESCOLA_UF").ToString())%>' Value='<%#Eval("ESCOLA_UF").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
														<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid3_DeleteColumn"/>
													</Columns>
													<EditFormSettings>
														<EditColumn ButtonType="ImageButton" />
													</EditFormSettings>
													<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings>
													<Scrolling AllowScroll="True"/>
													<ClientEvents OnGridCreated="Grid3Created" />
												<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
										<telerik:RadPageView id="TabPage5" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid4" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
												OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid4_ItemCommand" OnItemCreated="Grid4_ItemCreated"
												OnItemDataBound="Grid4_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
												RenderMode="Classic" ShowGroupPanel="False" TabIndex="44" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="CUR_ID" EditMode="InPlace" OnItemCreated="Grid4_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid4_EditColumn" UniqueName="Grid4_EditColumn"/>
														<telerik:GridBoundColumn UniqueName="GridColumn69" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_CURSO" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
															HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn69 %>" ItemStyle-Width="136" MaxLength="30" ReadOnly="False"
															Visible="True" />
														<telerik:GridBoundColumn UniqueName="GridColumn70" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_INSTITUICAO" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
															HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn70 %>" ItemStyle-Width="136" MaxLength="50" ReadOnly="False"
															Visible="True" />
														<telerik:GridDateTimeColumn UniqueName="GridColumn71" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_ANO_INICIO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn71 %>" ItemStyle-Width="86" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn72" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_ANO_CONCLUSAO" DataFormatString="{0:MM/yyyy}" EditDataFormatString="MM/yyyy"
															Exportable="True" FilterDateFormat="MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="123"
															HeaderText="<%$ Resources: GridColumn72 %>" ItemStyle-Width="116" MaxLength="7" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn73" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="CUR_CARGA_HORARIA" DataFormatString="{0:#########0}" Exportable="True"
															FilterControlWidth="58" FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn73 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86"
															MaxLength="10" ReadOnly="False" Visible="True" />
														<telerik:GridTemplateColumn UniqueName="GridColumn74" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="CUR_CIDADE" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
															GroupByExpression="CUR_CIDADE CUR_CIDADE Group By CUR_CIDADE" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn74 %>"
															ItemStyle-Width="136" ReadOnly="False" SortExpression="CUR_CIDADE" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn74_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid4_GridColumn74_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="128" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn74_Label" Text='<%#PageProvider.GetGridComboText("Grid4_GridColumn74", Eval("CUR_CIDADE").ToString())%>' Value='<%#Eval("CUR_CIDADE").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridTemplateColumn UniqueName="GridColumn75" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="CUR_UF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															GroupByExpression="CUR_UF CUR_UF Group By CUR_UF" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn75 %>"
															ItemStyle-Width="86" ReadOnly="False" SortExpression="CUR_UF" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn75_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid4_GridColumn75_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="78" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn75_Label" Text='<%#PageProvider.GetGridComboText("Grid4_GridColumn75", Eval("CUR_UF").ToString())%>' Value='<%#Eval("CUR_UF").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
														<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid4_DeleteColumn"/>
													</Columns>
													<EditFormSettings>
														<EditColumn ButtonType="ImageButton" />
													</EditFormSettings>
													<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings>
													<Scrolling AllowScroll="True"/>
													<ClientEvents OnGridCreated="Grid4Created" />
												<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
										<telerik:RadPageView id="TabPage6" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid5" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
												OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid5_ItemCommand"
												OnItemCreated="Grid5_ItemCreated" OnItemDataBound="Grid5_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
												OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="45" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="PROC_ID" EditMode="InPlace" OnItemCreated="Grid5_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid5_EditColumn" UniqueName="Grid5_EditColumn"/>
														<telerik:GridBoundColumn UniqueName="GridColumn41" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_ID_GCM" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
															FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn41 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
															Visible="True" />
														<telerik:GridBoundColumn UniqueName="GridColumn40" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_RE_MATRICULA" DataFormatString="{0:##########0}" Exportable="True"
															FilterControlWidth="58" FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn40 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="7"
															ReadOnly="False" Visible="True" />
														<telerik:GridBoundColumn UniqueName="GridColumn42" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_PARTE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn42 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn43" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_MOTIVO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn43 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn44" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_OS" DataFormatString="{0:##########0}" Exportable="True" FilterControlWidth="58"
															FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn44 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="11" ReadOnly="False"
															Visible="True" />
														<telerik:GridDateTimeColumn UniqueName="GridColumn45" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_RECEBIMENTO" DataFormatString="{0:dd/MM/yy}" EditDataFormatString="dd/MM/yy"
															Exportable="True" FilterDateFormat="dd/MM/yy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn45 %>" ItemStyle-Width="86" MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn46" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_PRAZO" DataFormatString="{0:dd/MM/yy}" EditDataFormatString="dd/MM/yy"
															Exportable="True" FilterDateFormat="dd/MM/yy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn46 %>" ItemStyle-Width="86" MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn47" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_CONCLUSAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn47 %>" ItemStyle-Width="86" MaxLength="100" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn48" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="PROC_OBSERVACAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn48 %>" ItemStyle-Width="86" MaxLength="0" ReadOnly="False" Visible="True" />
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
														<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid5_DeleteColumn"/>
													</Columns>
													<EditFormSettings>
														<EditColumn ButtonType="ImageButton" />
													</EditFormSettings>
													<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings>
													<Scrolling AllowScroll="True"/>
													<ClientEvents OnGridCreated="Grid5Created" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
										<telerik:RadPageView id="TabPage7" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid6" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
												OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid6_ItemCommand"
												OnItemCreated="Grid6_ItemCreated" OnItemDataBound="Grid6_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
												OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="46" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="FERIAR_ID" EditMode="InPlace" OnItemCreated="Grid6_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid6_EditColumn" UniqueName="Grid6_EditColumn"/>
														<telerik:GridTemplateColumn UniqueName="GridColumn51" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="FERIAS_ID_GCM" Exportable="True" FilterControlWidth="37" ForceExtractValue="Always"
															GroupByExpression="FERIAS_ID_GCM FERIAS_ID_GCM Group By FERIAS_ID_GCM" HeaderStyle-Width="72"
															HeaderText="<%$ Resources: GridColumn51 %>" ItemStyle-Width="65" ReadOnly="False" SortExpression="FERIAS_ID_GCM" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn51_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn51_Validation]]" data-validation-message="ID_GCM não pode ser vazio!"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid6_GridColumn51_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="57" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn51_Label" Text='<%#PageProvider.GetGridComboText("Grid6_GridColumn51", Eval("FERIAS_ID_GCM").ToString())%>' Value='<%#Eval("FERIAS_ID_GCM").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridBoundColumn UniqueName="GridColumn52" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_DESCRICAO" Exportable="True" FilterControlWidth="200" ForceExtractValue="Always"
															HeaderStyle-Width="235" HeaderText="<%$ Resources: GridColumn52 %>" ItemStyle-Width="228" MaxLength="50" ReadOnly="False"
															Visible="True" />
														<telerik:GridTemplateColumn UniqueName="GridColumn53" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="FERIAS_TIPO_FOLGA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															GroupByExpression="FERIAS_TIPO_FOLGA FERIAS_TIPO_FOLGA Group By FERIAS_TIPO_FOLGA" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn53 %>" ItemStyle-Width="86" ReadOnly="False" SortExpression="FERIAS_TIPO_FOLGA" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn53_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn53_Validation]]" data-validation-message="TIPO_FOLGA não pode ser vazio!"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid6_GridColumn53_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="78" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn53_Label" Text='<%#PageProvider.GetGridComboText("Grid6_GridColumn53", Eval("FERIAS_TIPO_FOLGA").ToString())%>' Value='<%#Eval("FERIAS_TIPO_FOLGA").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridDateTimeColumn UniqueName="GridColumn54" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_DATA_INICIO" DataFormatString="{0:dd/MM/yy}" EditDataFormatString="dd/MM/yy"
															Exportable="True" FilterDateFormat="dd/MM/yy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn54 %>" ItemStyle-Width="86" MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn55" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_DATA_TERMINO" DataFormatString="{0:dd/MM/yy}" EditDataFormatString="dd/MM/yy"
															Exportable="True" FilterDateFormat="dd/MM/yy" ForceExtractValue="Always" HeaderStyle-Width="93"
															HeaderText="<%$ Resources: GridColumn55 %>" ItemStyle-Width="86" MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True"
															/>
														<telerik:GridBoundColumn UniqueName="GridColumn56" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="FERIAS_RESUMO" Exportable="True" FilterControlWidth="116" ForceExtractValue="Always"
															HeaderStyle-Width="151" HeaderText="<%$ Resources: GridColumn56 %>" ItemStyle-Width="144" MaxLength="10" ReadOnly="False"
															Visible="True" />
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
														<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid6_DeleteColumn"/>
													</Columns>
													<EditFormSettings>
														<EditColumn ButtonType="ImageButton" />
													</EditFormSettings>
													<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings>
													<ClientEvents OnGridCreated="Grid6Created" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
										<telerik:RadPageView id="TabPage9" runat="server" BackColor="#FFFFFF">
											<telerik:RadGrid id="Grid7" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
												AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
												OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid7_ItemCommand"
												OnItemCreated="Grid7_ItemCreated" OnItemDataBound="Grid7_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
												OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="56" TableLayout="Fixed">
												<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID" EditMode="InPlace" OnItemCreated="Grid7_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
													<Columns>
														<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid7_EditColumn" UniqueName="Grid7_EditColumn"/>
														<telerik:GridDateTimeColumn UniqueName="GridColumn78" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="DATA_AVALIACAO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy"
															Exportable="True" FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="113"
															HeaderText="<%$ Resources: GridColumn78 %>" ItemStyle-Width="106" MaxLength="10" PickerType="DatePicker" ReadOnly="False"
															Visible="True" />
														<telerik:GridDateTimeColumn UniqueName="GridColumn79" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="DATA_PROX_AVALIACAO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy"
															Exportable="True" FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="113"
															HeaderText="<%$ Resources: GridColumn79 %>" ItemStyle-Width="106" MaxLength="10" PickerType="DatePicker" ReadOnly="False"
															Visible="True" />
														<telerik:GridTemplateColumn UniqueName="GridColumn80" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
															DataField="APTIDAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
															GroupByExpression="APTIDAO APTIDAO Group By APTIDAO" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn80 %>"
															ItemStyle-Width="86" ReadOnly="False" SortExpression="APTIDAO" Visible="True">
															<EditItemTemplate>
																<telerik:RadComboBox ID="GridColumn80_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
																	 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
																	OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
																	OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn80_Validation]]" data-validation-message="APTIDÃO não pode ser vazio!"
																	OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid7_GridColumn80_ComboBox_OnItemsRequested" ItemsPerRequest="15"
																	Width="78" ClientIDMode="Static" />
															</EditItemTemplate>
															<ItemTemplate> 
																<asp:Label runat="server" ID="GridColumn80_Label" Text='<%#PageProvider.GetGridComboText("Grid7_GridColumn80", Eval("APTIDAO").ToString())%>' Value='<%#Eval("APTIDAO").ToString()%>'/>
															</ItemTemplate> 
														</telerik:GridTemplateColumn>
														<telerik:GridBoundColumn UniqueName="GridColumn81" runat="server" AllowFiltering="True" AllowSorting="true"
															ConvertEmptyStringToNull="False" DataField="RESUMO" Exportable="True" FilterControlWidth="348" ForceExtractValue="Always"
															HeaderStyle-Width="383" HeaderText="<%$ Resources: GridColumn81 %>" ItemStyle-Width="376" MaxLength="10" ReadOnly="False"
															Visible="True" />
														<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
														<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid7_DeleteColumn"/>
													</Columns>
													<EditFormSettings>
														<EditColumn ButtonType="ImageButton" />
													</EditFormSettings>
													<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
												</MasterTableView>
												<PagerStyle Mode="NextPrevAndNumeric" />
												<ClientSettings>
													<ClientEvents OnGridCreated="Grid7Created" />
												</ClientSettings>
											</telerik:RadGrid>
										</telerik:RadPageView>
									</telerik:RadMultiPage>
								</div>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage8" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="42" ViewMode="Design" />
							</telerik:RadPageView>
						</telerik:RadMultiPage>
					</div>
					<asp:Label id="labError" runat="server" class="Error" />
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
				case "Button2":
					New(this);return false;
				break;
				case "Button3":
					Save(this);return false;
				break;
				case "Button4":
					Cancel(this);return false;
				break;
				case "Button5":
					Remove(this,true);return false;
				break;
				case "Button7":
					Previous(this);return false;
				break;
				case "Button8":
					Next(this);return false;
				break;
				case "Button11":
					Edit(this);return false;
				break;
			}
		}
		function GCM_ID() { return document.getElementById("RadTextBox1").value; }
		function GCM_NOME() { return document.getElementById("RadTextBox2").value; }
		function GCM_DATA_NASC() { return document.getElementById("DatePicker1").value; }
		function GCM_RG() { return document.getElementById("RadTextBox4").value; }
		function GCM_RE_MATRICULA() { return document.getElementById("RadTextBox28").value; }
		function GCM_STATUS() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function GCM_CPF() { return document.getElementById("RadTextBox30").value; }
		function GCM_GUERRA() { return document.getElementById("RadTextBox31").value; }
		function GCM_CNH() { return document.getElementById("RadTextBox37").value; }
		function GCM_VALIDADE_CNH() { return document.getElementById("DatePicker13").value; }
		function GCM_CATEG_CNH() { return document.getElementById("RadTextBox38").value; }
		function GCM_TITULO_ELEITOR() { return document.getElementById("RadTextBox39").value; }
		function GCM_CARTEIRA_TRABALHO() { return document.getElementById("RadTextBox40").value; }
		function GCM_PAI() { return document.getElementById("RadTextBox46").value; }
		function GCM_MAE() { return document.getElementById("RadTextBox47").value; }
		function GCM_TELEFONE() { return document.getElementById("RadTextBox48").value; }
		function GCM_CELULAR() { return document.getElementById("RadTextBox49").value; }
		function GCM_NACIONALIDADE() { return document.getElementById("RadTextBox50").value; }
		function GCM_NATURALIDADE() { return document.getElementById("RadTextBox51").value; }
		function GCM_FATOR_RH() { return document.getElementById("RadTextBox52").value; }
		function GCM_TIPO_SANGUINEO() { return document.getElementById("RadTextBox53").value; }
		function GCM_EMAIL() { return document.getElementById("RadTextBox54").value; }
		function GCM_TIPO_LOGRADOURO() { return $find("<%= TxtTipoLogradouro.ClientID %>").get_value(); }
		function GCM_NUMERO() { return document.getElementById("RadTextBox56").value; }
		function GCM_CIDADE() { return document.getElementById("TxtCidade").value; }
		function GCM_BAIRRO() { return document.getElementById("TxtBairro").value; }
		function GCM_ENDERECO() { return document.getElementById("TxtLogradouro").value; }
		function GCM_CEP() { return document.getElementById("TxtCEP").value; }
		function GCM_UF() { return document.getElementById("TxtUF").value; }
		function GCM_RG_FUNCIONAL_PMJ() { return document.getElementById("RadTextBox32").value; }
		function GCM_NUMERO_PORTE() { return document.getElementById("RadTextBox34").value; }
		function GCM_VALIDADE_PORTE() { return document.getElementById("DatePicker8").value; }
		function GCM_DATA_EXP_ID_FUNCIONAL() { return document.getElementById("DatePicker9").value; }
		function GCM_DATA_EXP_PORTE() { return document.getElementById("DatePicker10").value; }
		function GCM_DATA_ADMISSAO() { return document.getElementById("DatePicker11").value; }
		function GCM_DATA_DEMISSAO() { return document.getElementById("DatePicker12").value; }
		function GCM_FUNCAO() { return document.getElementById("RadTextBox35").value; }
		function GCM_RG_FUNCIONAL() { return document.getElementById("RadTextBox36").value; }
		function GCM_ELOGIOS() { return document.getElementById("RadTextBox55").value; }
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
						EnableDisableToolbarButtons(gToolbar.id,"Button2",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button3",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button4",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button5",!IsAjaxProcessing && __PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button8",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button11",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
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
				$j("#RadTextBox28").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox30").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox31").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox37").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox38").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox39").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox40").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox46").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox47").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox48").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox49").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox50").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox51").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox52").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox53").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox54").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox56").bind("keydown", InitiateEditAuto);
				$j("#TxtCidade").bind("keydown", InitiateEditAuto);
				$j("#TxtBairro").bind("keydown", InitiateEditAuto);
				$j("#TxtLogradouro").bind("keydown", InitiateEditAuto);
				$j("#TxtCEP").bind("keydown", InitiateEditAuto);
				$j("#TxtUF").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox32").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox34").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox35").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox36").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox55").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#TxtTipoLogradouro").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker13").bind("change", InitiateEditAuto);
				$j("#DatePicker13_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker8").bind("change", InitiateEditAuto);
				$j("#DatePicker8_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker9").bind("change", InitiateEditAuto);
				$j("#DatePicker9_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker10").bind("change", InitiateEditAuto);
				$j("#DatePicker10_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker11").bind("change", InitiateEditAuto);
				$j("#DatePicker11_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker12").bind("change", InitiateEditAuto);
				$j("#DatePicker12_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
