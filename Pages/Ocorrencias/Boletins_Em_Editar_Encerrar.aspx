<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Boletins_Em_Editar_Encerrar, App_Web_bisnh1gg" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Boletins_Em_Editar_Encerrar.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Boletins_Em_Editar_Encerrar_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
		function Grid4Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid4ShouldDisable")[0] && $j("#Grid4ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
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
	</script>
	<script language="JavaScript" type="text/javascript">
		function GridColumn11_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn12_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn34_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn35_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn36_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn3_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn4_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn5_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn6_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn7_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn8_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn9_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox3_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function DatePicker1_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox1_Validation(field, rules, i, options) {
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="308">
							<Items>
								<telerik:RadToolBarButton id="Button6" runat="server" CssClass="Button6" CommandArgument="Button6" CommandName="Button6" TabIndex="31"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="32"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button8" runat="server" CssClass="Button8" CommandArgument="Button8" CommandName="Button8" TabIndex="33"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button9" runat="server" CssClass="Button9" CommandArgument="Button9" CommandName="Button9" TabIndex="34"
									ToolTip="Excluir registro atual" />
								<telerik:RadToolBarButton id="Button11" runat="server" CssClass="Button11" CommandArgument="Button11" CommandName="Button11" TabIndex="35"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button12" runat="server" CssClass="Button12" CommandArgument="Button12" CommandName="Button12" TabIndex="36"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button14" runat="server" CssClass="Button14" CommandArgument="Button14" CommandName="Button14" TabIndex="37"
									ToolTip="Especifica expressão de filtragem" />
								<telerik:RadToolBarButton id="Button15" runat="server" CssClass="Button15" CommandArgument="Button15" CommandName="Button15" TabIndex="38"
									ToolTip="Inicia edição no registro atual" />
								<telerik:RadToolBarButton id="Button16" runat="server" CssClass="Button16" CommandArgument="Button16" CommandName="Button16" TabIndex="41"
									ToolTip="Imprimir B.O" />
							</Items>
						</telerik:RadToolBar>
					</div>
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
						<telerik:RadLabel id="Label30" runat="server" />
						<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
						<telerik:RadLabel id="Label32" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label33" runat="server" Text="<%$ Resources: Label33 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="23" Text="<%$ Resources: Button2 %>" />
					<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="24" Text="<%$ Resources: Button3 %>" />
					<asp:Button id="Button4" runat="server" CommandName="Button4" OnClick="___Button4_OnClick" TabIndex="25" Text="<%$ Resources: Button4 %>" />
					<asp:Button id="Button5" runat="server" CommandName="Button5" OnClick="___Button5_OnClick" TabIndex="26" Text="<%$ Resources: Button5 %>" />
					<div style="position:absolute !important;left:10px;top:83px;width:779px;height:976px">
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
								<telerik:RadTab id="TabItem5" runat="server" Text="<%$ Resources: TabPage5 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="950px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True"
									ForeColor="#FE0000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox1_wrapper" />
								<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
								<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True"
									ForeColor="#FFFFFF" MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox2_wrapper" />
								<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
								<telerik:RadTextBox id="RadTextBox3" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox3_Validation]]"
									data-validation-message="BOL_NUM_TALAO não pode ser vazio!" enabled="false" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="3" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox3_wrapper" />
								<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
								<telerik:RadDateTimePicker id="DatePicker1" runat="server" Calendar-ClientEvents-OnDateClick="HideDatePickerValidation"
									ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime"
									DatePopupButton-ToolTip="Select date" enabled="false" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="4" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="200px">
									<DateInput data-validation-engine="validate[funcCall[DatePicker1_Validation]]" data-validation-message="BOL_DATA não pode ser vazio!" />
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
								<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
								<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
								<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="8" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
								<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
								<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
								<telerik:RadTextBox id="RadTextBox8" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="10" TextMode="SingleLine" WrapperCssClass="c_RadTextBox8_wrapper" />
								<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
								<telerik:RadTextBox id="RadTextBox9" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="15"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="9" TextMode="SingleLine" WrapperCssClass="c_RadTextBox9_wrapper" />
								<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
								<telerik:RadComboBox id="ComboBox1" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
									CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox1_Validation]]"
									data-validation-message="BOL_VIATURA não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientBlur="___ComboBox1_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="6" />
								<telerik:RadComboBox id="ComboBox3" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="7" />
								<telerik:RadTextBox id="TxtTipoLogradouro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="11" TextMode="SingleLine"
									WrapperCssClass="c_TxtTipoLogradouro_wrapper" />
								<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
								<telerik:RadTextBox id="TxtLogradouro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="12" TextMode="SingleLine"
									WrapperCssClass="c_TxtLogradouro_wrapper" />
								<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
								<telerik:RadTextBox id="TxtBairro" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="35"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine" WrapperCssClass="c_TxtBairro_wrapper" />
								<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
								<telerik:RadTextBox id="TxtCidade" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="14" TextMode="SingleLine" WrapperCssClass="c_TxtCidade_wrapper" />
								<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
								<telerik:RadTextBox id="TxtCEP" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_TxtCEP_wrapper" />
								<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
								<telerik:RadTextBox id="TxtUF" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="16" TextMode="SingleLine" WrapperCssClass="c_TxtUF_wrapper" />
								<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
								<telerik:RadTextBox id="RadTextBox16" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="17" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox16_wrapper" />
								<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
								<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="22" Text="<%$ Resources: Button1 %>" />
								<telerik:RadLabel id="LabBuscaRetorno" runat="server" />
								<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
								<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
								<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
								<telerik:RadComboBox id="ComboBox4" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox4 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox4_OnItemsRequested" RenderMode="Classic" TabIndex="27" />
								<telerik:RadComboBox id="ComboBox5" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox5 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox5_OnItemsRequested" RenderMode="Classic" TabIndex="28" />
								<telerik:RadTextBox id="RadTextBox19" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="18" TextMode="MultiLine" WrapperCssClass="c_RadTextBox19_wrapper" />
								<telerik:RadTextBox id="RadTextBox20" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="MultiLine" WrapperCssClass="c_RadTextBox20_wrapper" />
								<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
								<telerik:RadTextBox id="RadTextBox21" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="20" TextMode="MultiLine" WrapperCssClass="c_RadTextBox21_wrapper" />
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<telerik:RadDateTimePicker id="DatePicker2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus"
									DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True"
									HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False"
									RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="21" TimeView-EndTime="23:00" TimeView-StartTime="00:00"
									Width="360px">
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
								<telerik:RadComboBox id="ComboBox6" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox6 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox6_OnItemsRequested" RenderMode="Classic" TabIndex="5" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid3" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
									OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid3_ItemCommand" OnItemCreated="Grid3_ItemCreated"
									OnItemDataBound="Grid3_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
									RenderMode="Classic" ShowGroupPanel="False" TabIndex="39" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid3_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid3_EditColumn" UniqueName="Grid3_EditColumn"/>
											<telerik:GridTemplateColumn UniqueName="GridColumn39" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="gcm_re" Exportable="True" FilterControlWidth="359" ForceExtractValue="Always" GroupByExpression="gcm_re gcm_re Group By gcm_re"
												HeaderStyle-Width="394" HeaderText="<%$ Resources: GridColumn39 %>" ItemStyle-Width="387" ReadOnly="False" SortExpression="gcm_re"
												Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn39_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn39_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="379" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn39_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn39", Eval("gcm_re").ToString())%>' Value='<%#Eval("gcm_re").ToString()%>'/>
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
										<ClientEvents OnGridCreated="Grid3Created" />
									</ClientSettings>
								</telerik:RadGrid>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage3" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid2" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
									OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid2_ItemCommand"
									OnItemCreated="Grid2_ItemCreated" OnItemDataBound="Grid2_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
									OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="30" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_ENVOLVIDOS" EditMode="InPlace" OnItemCreated="Grid2_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid2_EditColumn" UniqueName="Grid2_EditColumn"/>
											<telerik:GridBoundColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ID_ENVOLVIDOS" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn10 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="BOL_ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_NOME" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn12 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_RG" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_CPF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn14 %>" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn15" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_PAI" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn15 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn16" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_MAE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn16 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn17" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_NACIONALIDADE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn17 %>" ItemStyle-Width="86" MaxLength="25" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn18" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_NATURALIDADE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn18 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridTemplateColumn UniqueName="GridColumn19" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ENV_SEXO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="ENV_SEXO ENV_SEXO Group By ENV_SEXO" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn19 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="ENV_SEXO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn19_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn19_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn19_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn19", Eval("ENV_SEXO").ToString())%>' Value='<%#Eval("ENV_SEXO").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridDateTimeColumn UniqueName="GridColumn20" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_DATA_NASC" DataFormatString="{0:dd/MM/yy}" EditDataFormatString="dd/MM/yy"
												Exportable="True" FilterDateFormat="dd/MM/yy" ForceExtractValue="Always" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn20 %>" ItemStyle-Width="86" MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn21" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_CUTIS" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn21 %>" ItemStyle-Width="86" MaxLength="15" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn22" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_PROFISSAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn22 %>" ItemStyle-Width="86" MaxLength="25" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn23" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_TIPO_LOGRADOURO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn23 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn24" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_LOGRADOURO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn24 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn25" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_BAIRRO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn25 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn26" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_CIDADE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn26 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn27" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_UF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn27 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn28" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_CEP" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn28 %>" ItemStyle-Width="86" MaxLength="9" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn29" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_TELEFONE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn29 %>" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn30" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_CELULAR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn30 %>" ItemStyle-Width="86" MaxLength="15" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn31" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_EMPRESA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn31 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn32" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_ENDERECO_EMPRESA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn32 %>" ItemStyle-Width="86" MaxLength="100" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn33" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_TELEFONE_EMPRESA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn33 %>" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn34" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_PONTO_REFERENCIA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn34 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn35" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_RESUMO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn35 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn36" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ENV_CONDICAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn36 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
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
										<Scrolling AllowScroll="True"/>
										<ClientEvents OnGridCreated="Grid2Created" />
									</ClientSettings>
								</telerik:RadGrid>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage4" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid4" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
									OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid4_ItemCommand" OnItemCreated="Grid4_ItemCreated"
									OnItemDataBound="Grid4_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
									RenderMode="Classic" ShowGroupPanel="False" TabIndex="40" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid4_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid4_EditColumn" UniqueName="Grid4_EditColumn"/>
											<telerik:GridTemplateColumn UniqueName="GridColumn42" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="viatura" Exportable="True" FilterControlWidth="301" ForceExtractValue="Always"
												GroupByExpression="viatura viatura Group By viatura" HeaderStyle-Width="336" HeaderText="<%$ Resources: GridColumn42 %>"
												ItemStyle-Width="329" ReadOnly="False" SortExpression="viatura" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn42_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid4_GridColumn42_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="321" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn42_Label" Text='<%#PageProvider.GetGridComboText("Grid4_GridColumn42", Eval("viatura").ToString())%>' Value='<%#Eval("viatura").ToString()%>'/>
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
										<ClientEvents OnGridCreated="Grid4Created" />
									</ClientSettings>
								</telerik:RadGrid>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage5" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
									OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
									OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
									OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="29" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid1_EditColumn" UniqueName="Grid1_EditColumn"/>
											<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="ID_APREENSOES" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="5"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="40"
												HeaderText="<%$ Resources: GridColumn1 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="33" MaxLength="10" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="BOL_ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="APREE_OBJETO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="APREE_QTDE" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="APREE_MARCA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="APREE_MODELO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="APREE_NUM_FABRICACAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn8" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="APREE_DESTINO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn8 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="APREE_RECEBEDOR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn9 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
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
										<Scrolling AllowScroll="True"/>
										<ClientEvents OnGridCreated="Grid1Created" />
									</ClientSettings>
								</telerik:RadGrid>
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
				case "Button6":
					New(this);return false;
				break;
				case "Button7":
					Save(this);return false;
				break;
				case "Button8":
					Cancel(this);return false;
				break;
				case "Button9":
					Remove(this,true);return false;
				break;
				case "Button11":
					Previous(this);return false;
				break;
				case "Button12":
					Next(this);return false;
				break;
				case "Button14":
					Filter();return false;
				break;
				case "Button15":
					Edit(this);return false;
				break;
			}
			MainAjaxPanel.ajaxRequestWithTarget('MainAjaxPanel', CommandArgument);
		}
		function BOL_OCOR_ID() { return document.getElementById("RadTextBox1").value; }
		function BOL_NUMERO() { return document.getElementById("RadTextBox2").value; }
		function BOL_NUM_TALAO() { return document.getElementById("RadTextBox3").value; }
		function BOL_DATA() { return document.getElementById("DatePicker1").value; }
		function BOL_ATENDENTE() { return document.getElementById("RadTextBox6").value; }
		function BOL_SOLICITANTE() { return document.getElementById("RadTextBox8").value; }
		function BOL_TELEFONE() { return document.getElementById("RadTextBox9").value; }
		function BOL_VIATURA() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function BOL_PRIORIDADE() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function BOL_TIPO_LOGRADOURO() { return document.getElementById("TxtTipoLogradouro").value; }
		function BOL_LOGRADOURO() { return document.getElementById("TxtLogradouro").value; }
		function BOL_BAIRRO() { return document.getElementById("TxtBairro").value; }
		function BOL_CIDADE() { return document.getElementById("TxtCidade").value; }
		function BOL_CEP() { return document.getElementById("TxtCEP").value; }
		function BOL_UF() { return document.getElementById("TxtUF").value; }
		function BOL_REFERENCIA() { return document.getElementById("RadTextBox16").value; }
		function BOL_NATUREZA() { return $find("<%= ComboBox4.ClientID %>").get_value(); }
		function BOL_NATUREZA_FINAL() { return $find("<%= ComboBox5.ClientID %>").get_value(); }
		function BOL_RESUMO() { return document.getElementById("RadTextBox19").value; }
		function BOL_HISTORICO() { return document.getElementById("RadTextBox20").value; }
		function BOL_HISTORICO_FINAL() { return document.getElementById("RadTextBox21").value; }
		function BOL_DATA_FIM() { return document.getElementById("DatePicker2").value; }
		function BOL_STATUS() { return $find("<%= ComboBox6.ClientID %>").get_value(); }
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
						EnableDisableToolbarButtons(gToolbar.id,"Button6",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button8",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button9",!IsAjaxProcessing && __PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button11",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button12",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button14",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button15",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
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
				$j("#RadTextBox3").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox6").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox8").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox9").bind("keydown", InitiateEditAuto);
				$j("#TxtTipoLogradouro").bind("keydown", InitiateEditAuto);
				$j("#TxtLogradouro").bind("keydown", InitiateEditAuto);
				$j("#TxtBairro").bind("keydown", InitiateEditAuto);
				$j("#TxtCidade").bind("keydown", InitiateEditAuto);
				$j("#TxtCEP").bind("keydown", InitiateEditAuto);
				$j("#TxtUF").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox16").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox19").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox20").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox21").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox4").bind("change", InitiateEditAuto);
				$j("#ComboBox5").bind("change", InitiateEditAuto);
				$j("#ComboBox6").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker2").bind("change", InitiateEditAuto);
				$j("#DatePicker2_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label30").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label30").innerText = ""; }
					try { document.getElementById("Label32").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label32").innerText = ""; }
		}

	</script>
</html>
