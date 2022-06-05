<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.TB_VITIMA_MARIA_DA_PENHA, App_Web_kni1tjkc" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/TB_VITIMA_MARIA_DA_PENHA.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/TB_VITIMA_MARIA_DA_PENHA_USER.js?sv=1.127.2017" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/validation.js"></script>
	
	<script type="text/javascript">	   

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
				case "ComboBox2":
					AditionalFields = 
					{
						"ComboBox6" : jQuery("#ComboBox6")[0].control.get_value(),
					};
					break;
				case "ComboBox3":
					AditionalFields = 
					{
						"ComboBox2" : jQuery("#ComboBox2")[0].control.get_value(),
					};
					break;
				case "ComboBox8":
					AditionalFields = 
					{
						"ComboBox3" : jQuery("#ComboBox3")[0].control.get_value(),
					};
					break;
				case "ComboBox10":
					AditionalFields = 
					{
						"ComboBox9" : jQuery("#ComboBox9")[0].control.get_value(),
					};
					break;
				case "ComboBox11":
					AditionalFields = 
					{
						"ComboBox10" : jQuery("#ComboBox10")[0].control.get_value(),
					};
					break;
				case "ComboBox13":
					AditionalFields = 
					{
						"ComboBox11" : jQuery("#ComboBox11")[0].control.get_value(),
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
				case "ComboBox6":
					PrepareAndRequestItems(new Array("ComboBox2", "ComboBox3", "ComboBox8"));
					break;
				case "ComboBox2":
					PrepareAndRequestItems(new Array("ComboBox3", "ComboBox8"));
					break;
				case "ComboBox3":
					PrepareAndRequestItems(new Array("ComboBox8"));
					break;
				case "ComboBox9":
					PrepareAndRequestItems(new Array("ComboBox10", "ComboBox11", "ComboBox13"));
					break;
				case "ComboBox10":
					PrepareAndRequestItems(new Array("ComboBox11", "ComboBox13"));
					break;
				case "ComboBox11":
					PrepareAndRequestItems(new Array("ComboBox13"));
					break;
			}
		}
	</script>
	<script language="JavaScript" type="text/javascript">
		function GridColumn3_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn13_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox18_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox4_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox48_Validation(field, rules, i, options) {
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="309">
							<Items>
								<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="81"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button5" runat="server" CssClass="Button5" CommandArgument="Button5" CommandName="Button5" TabIndex="82"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button6" runat="server" CssClass="Button6" CommandArgument="Button6" CommandName="Button6" TabIndex="83"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="84"
									ToolTip="Excluir registro atual" />
								<telerik:RadToolBarButton id="Button9" runat="server" CssClass="Button9" CommandArgument="Button9" CommandName="Button9" TabIndex="85"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="86"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button12" runat="server" CssClass="Button12" CommandArgument="Button12" CommandName="Button12" TabIndex="87"
									ToolTip="Especifica expressão de filtragem" />
								<telerik:RadToolBarButton id="Button13" runat="server" CssClass="Button13" CommandArgument="Button13" CommandName="Button13" TabIndex="88"
									ToolTip="Inicia edição no registro atual" />
								<telerik:RadToolBarButton id="Button14" runat="server" CssClass="Button14" CommandArgument="Button14" CommandName="Button14" TabIndex="144"
									ToolTip="Imprimir Medida Protetiva" />
							</Items>
						</telerik:RadToolBar>
					</div>
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
						<telerik:RadLabel id="Label16" runat="server" />
						<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
						<telerik:RadLabel id="Label18" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<div style="position:absolute !important;left:30px;top:58px;width:888px;height:683px" Skin="Default">
						<telerik:RadTabStrip id="TabControl1" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl1MultiPage"
							PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True" Skin="Default">
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
								<telerik:RadTab id="TabItem6" runat="server" Text="<%$ Resources: TabPage6 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="657px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True"
									ForeColor="#FF0000" MaxLength="20" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox1_wrapper" />
								<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
								<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="25"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
								<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
								<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox4_Validation]]"
									data-validation-message="NOME não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_RadTextBox4_wrapper" />
								<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
								<telerik:RadTextBox id="RadTextBox5" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="15"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="3" TextMode="SingleLine" WrapperCssClass="c_RadTextBox5_wrapper" />
								<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
								<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
								<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
								<telerik:RadComboBox id="ComboBox2" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="5" />
								<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
								<telerik:RadComboBox id="ComboBox3" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="6" />
								<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
								<telerik:RadTextBox id="RadTextBox7" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="8" TextMode="SingleLine" WrapperCssClass="c_RadTextBox7_wrapper" />
								<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
								<telerik:RadDateTimePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300"
									HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
									ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="9" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="149px">
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
								<telerik:RadComboBox id="ComboBox4" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox4 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox4_OnItemsRequested" RenderMode="Classic" TabIndex="10" />
								<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
								<telerik:RadTextBox id="RadTextBox8" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="11" TextMode="SingleLine" WrapperCssClass="c_RadTextBox8_wrapper" />
								<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
								<telerik:RadDateTimePicker id="DatePicker2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300"
									HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
									ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="12" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="185px">
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
								<telerik:RadDateTimePicker id="DatePicker3" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300"
									HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
									ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="13" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="149px">
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
								<telerik:RadComboBox id="ComboBox5" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox5 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox5_OnItemsRequested" RenderMode="Classic" TabIndex="14" />
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<Div id="Line1">
								</Div>
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
								<telerik:RadTextBox id="RadTextBox9" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_RadTextBox9_wrapper" />
								<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
								<telerik:RadTextBox id="RadTextBox10" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="16" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox10_wrapper" />
								<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
								<telerik:RadComboBox id="ComboBox6" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox6 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox6_OnItemsRequested" RenderMode="Classic" TabIndex="17" />
								<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
								<telerik:RadComboBox id="ComboBox7" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox7 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox7_OnItemsRequested" RenderMode="Classic" TabIndex="18" />
								<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
								<telerik:RadComboBox id="ComboBox8" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox8 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox8_OnItemsRequested" RenderMode="Classic" TabIndex="19" />
								<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
								<telerik:RadTextBox id="RadTextBox11" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="21" TextMode="SingleLine" WrapperCssClass="c_RadTextBox11_wrapper"
									/>
								<telerik:RadLabel id="Label33" runat="server" Text="<%$ Resources: Label33 %>" />
								<asp:Button id="Button1" runat="server" CommandName="Button1" TabIndex="22" Text="<%$ Resources: Button1 %>" />
								<telerik:RadTextBox id="RadTextBox12" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="23" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox12_wrapper" />
								<telerik:RadLabel id="Label34" runat="server" Text="<%$ Resources: Label34 %>" />
								<telerik:RadTextBox id="RadTextBox13" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="24" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox13_wrapper" />
								<telerik:RadLabel id="Label35" runat="server" Text="<%$ Resources: Label35 %>" />
								<telerik:RadTextBox id="RadTextBox14" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="150" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="25" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox14_wrapper" />
								<telerik:RadLabel id="Label36" runat="server" Text="<%$ Resources: Label36 %>" />
								<telerik:RadTextBox id="RadTextBox15" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="26" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox15_wrapper" />
								<telerik:RadLabel id="Label37" runat="server" Text="<%$ Resources: Label37 %>" />
								<telerik:RadTextBox id="RadTextBox16" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="27" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox16_wrapper" />
								<telerik:RadLabel id="Label38" runat="server" Text="<%$ Resources: Label38 %>" />
								<telerik:RadTextBox id="RadTextBox17" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="28" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox17_wrapper" />
								<telerik:RadLabel id="Label39" runat="server" Text="<%$ Resources: Label39 %>" />
								<telerik:RadTextBox id="RadTextBox48" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox48_Validation]]" data-validation-message="NUMERO não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="20" TextMode="SingleLine" WrapperCssClass="c_RadTextBox48_wrapper" />
								<telerik:RadLabel id="Label156" runat="server" Text="<%$ Resources: Label156 %>" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<telerik:RadTextBox id="RadTextBox18" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox18_Validation]]" data-validation-message="AUTOR não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="29" TextMode="SingleLine" WrapperCssClass="c_RadTextBox18_wrapper" />
								<telerik:RadLabel id="Label40" runat="server" Text="<%$ Resources: Label40 %>" />
								<telerik:RadTextBox id="RadTextBox19" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="30" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox19_wrapper" />
								<telerik:RadLabel id="Label41" runat="server" Text="<%$ Resources: Label41 %>" />
								<telerik:RadTextBox id="RadTextBox20" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="31" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox20_wrapper" />
								<telerik:RadLabel id="Label42" runat="server" Text="<%$ Resources: Label42 %>" />
								<telerik:RadComboBox id="ComboBox9" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox9 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox9_OnItemsRequested" RenderMode="Classic" TabIndex="32" />
								<telerik:RadLabel id="Label43" runat="server" Text="<%$ Resources: Label43 %>" />
								<telerik:RadComboBox id="ComboBox10" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox10 %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnClientSelectedIndexChanged="ClientRefreshCombos"
									OnItemsRequested="___ComboBox10_OnItemsRequested" RenderMode="Classic" TabIndex="33" />
								<telerik:RadLabel id="Label44" runat="server" Text="<%$ Resources: Label44 %>" />
								<telerik:RadComboBox id="ComboBox11" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox11 %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnClientSelectedIndexChanged="ClientRefreshCombos"
									OnItemsRequested="___ComboBox11_OnItemsRequested" RenderMode="Classic" TabIndex="34" />
								<telerik:RadLabel id="Label45" runat="server" Text="<%$ Resources: Label45 %>" />
								<telerik:RadComboBox id="ComboBox12" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox12 %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox12_OnItemsRequested" RenderMode="Classic" TabIndex="35" />
								<telerik:RadLabel id="Label46" runat="server" Text="<%$ Resources: Label46 %>" />
								<telerik:RadComboBox id="ComboBox13" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox13 %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox13_OnItemsRequested" RenderMode="Classic" TabIndex="36" />
								<telerik:RadLabel id="Label47" runat="server" Text="<%$ Resources: Label47 %>" />
								<telerik:RadTextBox id="RadTextBox21" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="37" TextMode="SingleLine" WrapperCssClass="c_RadTextBox21_wrapper"
									/>
								<telerik:RadLabel id="Label48" runat="server" Text="<%$ Resources: Label48 %>" />
								<asp:Button id="Button2" runat="server" CommandName="Button2" TabIndex="38" Text="<%$ Resources: Button2 %>" />
								<telerik:RadTextBox id="RadTextBox22" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="39" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox22_wrapper" />
								<telerik:RadLabel id="Label49" runat="server" Text="<%$ Resources: Label49 %>" />
								<telerik:RadTextBox id="RadTextBox23" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="40" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox23_wrapper" />
								<telerik:RadLabel id="Label50" runat="server" Text="<%$ Resources: Label50 %>" />
								<telerik:RadTextBox id="RadTextBox24" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="41" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox24_wrapper" />
								<telerik:RadLabel id="Label51" runat="server" Text="<%$ Resources: Label51 %>" />
								<telerik:RadTextBox id="RadTextBox25" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="42" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox25_wrapper" />
								<telerik:RadLabel id="Label52" runat="server" Text="<%$ Resources: Label52 %>" />
								<telerik:RadTextBox id="RadTextBox26" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="43" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox26_wrapper" />
								<telerik:RadLabel id="Label53" runat="server" Text="<%$ Resources: Label53 %>" />
								<telerik:RadCheckBox id="RadCheckBox1" runat="server" AutoPostBack="True" Checked="False" CssClass="RadCheckBox1" RenderMode="Classic"
									TabIndex="44" Text="<%$ Resources: RadCheckBox1 %>" />
								<telerik:RadCheckBox id="RadCheckBox2" runat="server" AutoPostBack="True" Checked="False" CssClass="RadCheckBox2" RenderMode="Classic"
									TabIndex="45" Text="<%$ Resources: RadCheckBox2 %>" />
								<telerik:RadTextBox id="RadTextBox27" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="46" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox27_wrapper" />
								<telerik:RadLabel id="Label54" runat="server" Text="<%$ Resources: Label54 %>" />
								<telerik:RadTextBox id="RadTextBox28" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="47" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox28_wrapper" />
								<telerik:RadLabel id="Label55" runat="server" Text="<%$ Resources: Label55 %>" />
								<telerik:RadTextBox id="RadTextBox29" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="48" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox29_wrapper" />
								<telerik:RadLabel id="Label56" runat="server" Text="<%$ Resources: Label56 %>" />
								<telerik:RadLabel id="Label67" runat="server" Text="<%$ Resources: Label67 %>" />
								<telerik:RadTextBox id="RadTextBox39" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="49" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox39_wrapper" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage3" runat="server" BackColor="#FFFFFF">
								<telerik:RadWizard id="WizardRisco" runat="server" BackColor="Transparent" BorderColor="#000000" BorderStyle="None" BorderWidth="1" dir="ltr"
									DisplayNavigationBar="True" DisplayProgressBar="True" NavigationBarPosition="Top" NavigationButtonsPosition="Bottom"
									ProgressBarPosition="Top" RenderedSteps="All" RenderMode="Classic" Skin="Metro">
										<WizardSteps>
											<telerik:RadWizardStep id="WizardPageRisco" runat="server" Title="<%$ Resources: WizardPageRisco %>">
												<telerik:RadComboBox id="ComboBox14" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox14 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox14_OnItemsRequested" RenderMode="Classic" TabIndex="53" />
												<telerik:RadLabel id="Label68" runat="server" Text="<%$ Resources: Label68 %>" />
												<telerik:RadComboBox id="ComboBox15" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox15 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox15_OnItemsRequested" RenderMode="Classic" TabIndex="54" />
												<telerik:RadLabel id="Label69" runat="server" Text="<%$ Resources: Label69 %>" />
												<telerik:RadComboBox id="ComboBox16" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox16 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox16_OnItemsRequested" RenderMode="Classic" TabIndex="55" />
												<telerik:RadLabel id="Label70" runat="server" Text="<%$ Resources: Label70 %>" />
												<telerik:RadComboBox id="ComboBox17" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox17 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox17_OnItemsRequested" RenderMode="Classic" TabIndex="56" />
												<telerik:RadLabel id="Label71" runat="server" Text="<%$ Resources: Label71 %>" />
												<telerik:RadComboBox id="ComboBox18" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox18 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox18_OnItemsRequested" RenderMode="Classic" TabIndex="57" />
												<telerik:RadLabel id="Label72" runat="server" Text="<%$ Resources: Label72 %>" />
												<telerik:RadComboBox id="ComboBox19" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox19 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox19_OnItemsRequested" RenderMode="Classic" TabIndex="58" />
												<telerik:RadLabel id="Label73" runat="server" Text="<%$ Resources: Label73 %>" />
												<telerik:RadComboBox id="ComboBox20" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox20 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox20_OnItemsRequested" RenderMode="Classic" TabIndex="59" />
												<telerik:RadLabel id="Label75" runat="server" Text="<%$ Resources: Label75 %>" />
											</telerik:RadWizardStep>
											<telerik:RadWizardStep id="WizardPageRiscoCondicao" runat="server" Title="<%$ Resources: WizardPageRiscoCondicao %>">
												<telerik:RadComboBox id="ComboBox21" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox21 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox21_OnItemsRequested" RenderMode="Classic" TabIndex="60" />
												<telerik:RadLabel id="Label76" runat="server" Text="<%$ Resources: Label76 %>" />
												<telerik:RadComboBox id="ComboBox22" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox22 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox22_OnItemsRequested" RenderMode="Classic" TabIndex="61" />
												<telerik:RadLabel id="Label77" runat="server" Text="<%$ Resources: Label77 %>" />
												<telerik:RadComboBox id="ComboBox23" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox23 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox23_OnItemsRequested" RenderMode="Classic" TabIndex="62" />
												<telerik:RadLabel id="Label78" runat="server" Text="<%$ Resources: Label78 %>" />
												<telerik:RadTextBox id="RadTextBox40" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="63" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox40_wrapper" />
												<telerik:RadLabel id="Label79" runat="server" Text="<%$ Resources: Label79 %>" />
												<telerik:RadComboBox id="ComboBox24" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox24 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox24_OnItemsRequested" RenderMode="Classic" TabIndex="64" />
												<telerik:RadLabel id="Label80" runat="server" Text="<%$ Resources: Label80 %>" />
												<telerik:RadTextBox id="RadTextBox41" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="66" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox41_wrapper" />
												<telerik:RadLabel id="Label81" runat="server" Text="<%$ Resources: Label81 %>" />
												<telerik:RadComboBox id="ComboBox25" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox25 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox25_OnItemsRequested" RenderMode="Classic" TabIndex="65" />
												<telerik:RadLabel id="Label82" runat="server" Text="<%$ Resources: Label82 %>" />
												<telerik:RadTextBox id="RadTextBox42" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="67" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox42_wrapper" />
												<telerik:RadLabel id="Label83" runat="server" Text="<%$ Resources: Label83 %>" />
												<telerik:RadComboBox id="ComboBox26" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox26 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox26_OnItemsRequested" RenderMode="Classic" TabIndex="68" />
												<telerik:RadLabel id="Label84" runat="server" Text="<%$ Resources: Label84 %>" />
												<telerik:RadTextBox id="RadTextBox43" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="69" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox43_wrapper" />
												<telerik:RadLabel id="Label85" runat="server" Text="<%$ Resources: Label85 %>" />
												<telerik:RadLabel id="Label86" runat="server" Text="<%$ Resources: Label86 %>" />
												<telerik:RadComboBox id="ComboBox28" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox28 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox28_OnItemsRequested" RenderMode="Classic" TabIndex="70" />
												<telerik:RadLabel id="Label87" runat="server" Text="<%$ Resources: Label87 %>" />
												<telerik:RadTextBox id="RadTextBox44" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="72" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox44_wrapper" />
												<telerik:RadLabel id="Label88" runat="server" Text="<%$ Resources: Label88 %>" />
												<telerik:RadComboBox id="ComboBox29" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox29 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox29_OnItemsRequested" RenderMode="Classic" TabIndex="71" />
											</telerik:RadWizardStep>
											<telerik:RadWizardStep id="WizardPageRiscoOutros" runat="server" Title="<%$ Resources: WizardPageRiscoOutros %>">
												<telerik:RadComboBox id="ComboBox30" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox30 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox30_OnItemsRequested" RenderMode="Classic" TabIndex="73" />
												<telerik:RadLabel id="Label89" runat="server" Text="<%$ Resources: Label89 %>" />
												<telerik:RadTextBox id="RadTextBox45" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="74" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox45_wrapper" />
												<telerik:RadLabel id="Label90" runat="server" Text="<%$ Resources: Label90 %>" />
												<telerik:RadComboBox id="ComboBox31" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox31 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox31_OnItemsRequested" RenderMode="Classic" TabIndex="75" />
												<telerik:RadLabel id="Label91" runat="server" Text="<%$ Resources: Label91 %>" />
												<telerik:RadComboBox id="ComboBox32" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox32 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox32_OnItemsRequested" RenderMode="Classic" TabIndex="76" />
												<telerik:RadLabel id="Label92" runat="server" Text="<%$ Resources: Label92 %>" />
												<telerik:RadComboBox id="ComboBox33" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox33 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox33_OnItemsRequested" RenderMode="Classic" TabIndex="77" />
												<telerik:RadLabel id="Label93" runat="server" Text="<%$ Resources: Label93 %>" />
												<telerik:RadComboBox id="ComboBox34" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox34 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox34_OnItemsRequested" RenderMode="Classic" TabIndex="78" />
												<telerik:RadLabel id="Label94" runat="server" Text="<%$ Resources: Label94 %>" />
												<telerik:RadComboBox id="ComboBox35" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox35 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox35_OnItemsRequested" RenderMode="Classic" TabIndex="79" />
												<telerik:RadLabel id="Label95" runat="server" Text="<%$ Resources: Label95 %>" />
												<telerik:RadComboBox id="ComboBox36" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox36 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox36_OnItemsRequested" RenderMode="Classic" TabIndex="80" />
												<telerik:RadLabel id="Label96" runat="server" Text="<%$ Resources: Label96 %>" />
											</telerik:RadWizardStep>
										</WizardSteps>
								</telerik:RadWizard>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage4" runat="server" BackColor="#FFFFFF">
								<telerik:RadWizard id="WizardAutor" runat="server" BackColor="Transparent" BorderColor="#000000" BorderStyle="None" BorderWidth="1" dir="ltr"
									DisplayNavigationBar="True" DisplayProgressBar="True" NavigationBarPosition="Top" NavigationButtonsPosition="Bottom"
									ProgressBarPosition="Top" RenderedSteps="All" RenderMode="Classic" Skin="Metro">
										<WizardSteps>
											<telerik:RadWizardStep id="WizardPageAutor" runat="server" Title="<%$ Resources: WizardPageAutor %>">
												<telerik:RadComboBox id="ComboBox37" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox37 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox37_OnItemsRequested" RenderMode="Classic" TabIndex="89" />
												<telerik:RadLabel id="Label97" runat="server" Text="<%$ Resources: Label97 %>" />
												<telerik:RadComboBox id="ComboBox38" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox38 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox38_OnItemsRequested" RenderMode="Classic" TabIndex="90" />
												<telerik:RadLabel id="Label98" runat="server" Text="<%$ Resources: Label98 %>" />
												<telerik:RadComboBox id="ComboBox39" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox39 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox39_OnItemsRequested" RenderMode="Classic" TabIndex="91" />
												<telerik:RadLabel id="Label99" runat="server" Text="<%$ Resources: Label99 %>" />
												<telerik:RadComboBox id="ComboBox40" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox40 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox40_OnItemsRequested" RenderMode="Classic" TabIndex="92" />
												<telerik:RadLabel id="Label100" runat="server" Text="<%$ Resources: Label100 %>" />
												<telerik:RadComboBox id="ComboBox41" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox41 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox41_OnItemsRequested" RenderMode="Classic" TabIndex="93" />
												<telerik:RadLabel id="Label101" runat="server" Text="<%$ Resources: Label101 %>" />
												<telerik:RadComboBox id="ComboBox42" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox42 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox42_OnItemsRequested" RenderMode="Classic" TabIndex="94" />
												<telerik:RadLabel id="Label102" runat="server" Text="<%$ Resources: Label102 %>" />
												<Div id="Line2">
												</Div>
												<telerik:RadLabel id="Label103" runat="server" Text="<%$ Resources: Label103 %>" />
												<telerik:RadComboBox id="ComboBox43" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox43 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox43_OnItemsRequested" RenderMode="Classic" TabIndex="95" />
												<telerik:RadLabel id="Label104" runat="server" Text="<%$ Resources: Label104 %>" />
												<telerik:RadComboBox id="ComboBox44" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox44 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox44_OnItemsRequested" RenderMode="Classic" TabIndex="96" />
												<telerik:RadLabel id="Label105" runat="server" Text="<%$ Resources: Label105 %>" />
												<telerik:RadComboBox id="ComboBox45" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox45 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox45_OnItemsRequested" RenderMode="Classic" TabIndex="97" />
												<telerik:RadLabel id="Label106" runat="server" Text="<%$ Resources: Label106 %>" />
												<telerik:RadComboBox id="ComboBox46" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox46 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox46_OnItemsRequested" RenderMode="Classic" TabIndex="98" />
												<telerik:RadLabel id="Label107" runat="server" Text="<%$ Resources: Label107 %>" />
												<telerik:RadComboBox id="ComboBox47" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox47 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox47_OnItemsRequested" RenderMode="Classic" TabIndex="99" />
												<telerik:RadLabel id="Label108" runat="server" Text="<%$ Resources: Label108 %>" />
												<telerik:RadComboBox id="ComboBox48" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox48 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox48_OnItemsRequested" RenderMode="Classic" TabIndex="100" />
												<telerik:RadLabel id="Label109" runat="server" Text="<%$ Resources: Label109 %>" />
												<telerik:RadComboBox id="ComboBox49" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox49 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox49_OnItemsRequested" RenderMode="Classic" TabIndex="101" />
												<telerik:RadLabel id="Label110" runat="server" Text="<%$ Resources: Label110 %>" />
												<telerik:RadComboBox id="ComboBox50" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox50 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox50_OnItemsRequested" RenderMode="Classic" TabIndex="102" />
												<telerik:RadLabel id="Label111" runat="server" Text="<%$ Resources: Label111 %>" />
												<telerik:RadComboBox id="ComboBox66" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox66 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox66_OnItemsRequested" RenderMode="Classic" TabIndex="103" />
												<telerik:RadLabel id="Label127" runat="server" Text="<%$ Resources: Label127 %>" />
												<telerik:RadComboBox id="ComboBox67" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox67 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox67_OnItemsRequested" RenderMode="Classic" TabIndex="104" />
												<telerik:RadLabel id="Label128" runat="server" Text="<%$ Resources: Label128 %>" />
												<telerik:RadComboBox id="ComboBox68" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox68 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox68_OnItemsRequested" RenderMode="Classic" TabIndex="105" />
												<telerik:RadLabel id="Label129" runat="server" Text="<%$ Resources: Label129 %>" />
											</telerik:RadWizardStep>
											<telerik:RadWizardStep id="WizardPageAutorContinua" runat="server" Title="<%$ Resources: WizardPageAutorContinua %>">
												<telerik:RadComboBox id="ComboBox54" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox54 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox54_OnItemsRequested" RenderMode="Classic" TabIndex="106" />
												<telerik:RadLabel id="Label115" runat="server" Text="<%$ Resources: Label115 %>" />
												<telerik:RadComboBox id="ComboBox55" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox55 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox55_OnItemsRequested" RenderMode="Classic" TabIndex="107" />
												<telerik:RadLabel id="Label116" runat="server" Text="<%$ Resources: Label116 %>" />
												<telerik:RadComboBox id="ComboBox56" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox56 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox56_OnItemsRequested" RenderMode="Classic" TabIndex="108" />
												<telerik:RadLabel id="Label117" runat="server" Text="<%$ Resources: Label117 %>" />
												<telerik:RadComboBox id="ComboBox57" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox57 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox57_OnItemsRequested" RenderMode="Classic" TabIndex="109" />
												<telerik:RadLabel id="Label118" runat="server" Text="<%$ Resources: Label118 %>" />
												<telerik:RadComboBox id="ComboBox58" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox58 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox58_OnItemsRequested" RenderMode="Classic" TabIndex="110" />
												<telerik:RadLabel id="Label119" runat="server" Text="<%$ Resources: Label119 %>" />
												<telerik:RadComboBox id="ComboBox59" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox59 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox59_OnItemsRequested" RenderMode="Classic" TabIndex="111" />
												<telerik:RadLabel id="Label120" runat="server" Text="<%$ Resources: Label120 %>" />
												<telerik:RadComboBox id="ComboBox60" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox60 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox60_OnItemsRequested" RenderMode="Classic" TabIndex="112" />
												<telerik:RadLabel id="Label121" runat="server" Text="<%$ Resources: Label121 %>" />
												<telerik:RadComboBox id="ComboBox61" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox61 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox61_OnItemsRequested" RenderMode="Classic" TabIndex="113" />
												<telerik:RadLabel id="Label122" runat="server" Text="<%$ Resources: Label122 %>" />
												<telerik:RadComboBox id="ComboBox62" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox62 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox62_OnItemsRequested" RenderMode="Classic" TabIndex="114" />
												<telerik:RadLabel id="Label123" runat="server" Text="<%$ Resources: Label123 %>" />
												<telerik:RadComboBox id="ComboBox63" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox63 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox63_OnItemsRequested" RenderMode="Classic" TabIndex="115" />
												<telerik:RadLabel id="Label124" runat="server" Text="<%$ Resources: Label124 %>" />
												<telerik:RadComboBox id="ComboBox64" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox64 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox64_OnItemsRequested" RenderMode="Classic" TabIndex="116" />
												<telerik:RadLabel id="Label125" runat="server" Text="<%$ Resources: Label125 %>" />
												<telerik:RadComboBox id="ComboBox65" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox65 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox65_OnItemsRequested" RenderMode="Classic" TabIndex="117" />
												<telerik:RadLabel id="Label126" runat="server" Text="<%$ Resources: Label126 %>" />
												<telerik:RadComboBox id="ComboBox69" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox69 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox69_OnItemsRequested" RenderMode="Classic" TabIndex="118" />
												<telerik:RadLabel id="Label130" runat="server" Text="<%$ Resources: Label130 %>" />
												<telerik:RadComboBox id="ComboBox70" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox70 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox70_OnItemsRequested" RenderMode="Classic" TabIndex="119" />
												<telerik:RadLabel id="Label131" runat="server" Text="<%$ Resources: Label131 %>" />
												<telerik:RadComboBox id="ComboBox71" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox71 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox71_OnItemsRequested" RenderMode="Classic" TabIndex="120" />
												<telerik:RadLabel id="Label132" runat="server" Text="<%$ Resources: Label132 %>" />
												<telerik:RadComboBox id="ComboBox72" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox72 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox72_OnItemsRequested" RenderMode="Classic" TabIndex="121" />
												<telerik:RadLabel id="Label133" runat="server" Text="<%$ Resources: Label133 %>" />
												<telerik:RadComboBox id="ComboBox73" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox73 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox73_OnItemsRequested" RenderMode="Classic" TabIndex="122" />
												<telerik:RadLabel id="Label134" runat="server" Text="<%$ Resources: Label134 %>" />
												<telerik:RadComboBox id="ComboBox74" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox74 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox74_OnItemsRequested" RenderMode="Classic" TabIndex="123" />
												<telerik:RadLabel id="Label135" runat="server" Text="<%$ Resources: Label135 %>" />
											</telerik:RadWizardStep>
											<telerik:RadWizardStep id="WizardPageEnteados" runat="server" Title="<%$ Resources: WizardPageEnteados %>">
												<telerik:RadComboBox id="ComboBox75" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox75 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox75_OnItemsRequested" RenderMode="Classic" TabIndex="124" />
												<telerik:RadLabel id="Label136" runat="server" Text="<%$ Resources: Label136 %>" />
												<telerik:RadTextBox id="RadTextBox46" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="125" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox46_wrapper" />
												<telerik:RadLabel id="Label137" runat="server" Text="<%$ Resources: Label137 %>" />
												<telerik:RadComboBox id="ComboBox76" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox76 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox76_OnItemsRequested" RenderMode="Classic" TabIndex="126" />
												<telerik:RadLabel id="Label138" runat="server" Text="<%$ Resources: Label138 %>" />
												<telerik:RadComboBox id="ComboBox77" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox77 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox77_OnItemsRequested" RenderMode="Classic" TabIndex="127" />
												<telerik:RadLabel id="Label139" runat="server" Text="<%$ Resources: Label139 %>" />
												<telerik:RadTextBox id="RadTextBox47" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
													MaxLength="50" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="128" TextMode="SingleLine"
													WrapperCssClass="c_RadTextBox47_wrapper" />
												<telerik:RadLabel id="Label140" runat="server" Text="<%$ Resources: Label140 %>" />
											</telerik:RadWizardStep>
											<telerik:RadWizardStep id="WizardPageSaude" runat="server" Title="<%$ Resources: WizardPageSaude %>">
												<telerik:RadComboBox id="ComboBox78" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox78 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox78_OnItemsRequested" RenderMode="Classic" TabIndex="129" />
												<telerik:RadLabel id="Label141" runat="server" Text="<%$ Resources: Label141 %>" />
												<telerik:RadComboBox id="ComboBox79" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox79 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox79_OnItemsRequested" RenderMode="Classic" TabIndex="130" />
												<telerik:RadLabel id="Label142" runat="server" Text="<%$ Resources: Label142 %>" />
												<telerik:RadComboBox id="ComboBox80" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox80 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox80_OnItemsRequested" RenderMode="Classic" TabIndex="131" />
												<telerik:RadLabel id="Label143" runat="server" Text="<%$ Resources: Label143 %>" />
												<telerik:RadComboBox id="ComboBox81" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox81 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox81_OnItemsRequested" RenderMode="Classic" TabIndex="132" />
												<telerik:RadLabel id="Label144" runat="server" Text="<%$ Resources: Label144 %>" />
												<telerik:RadComboBox id="ComboBox82" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox82 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox82_OnItemsRequested" RenderMode="Classic" TabIndex="133" />
												<telerik:RadLabel id="Label145" runat="server" Text="<%$ Resources: Label145 %>" />
												<telerik:RadComboBox id="ComboBox83" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox83 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox83_OnItemsRequested" RenderMode="Classic" TabIndex="134" />
												<telerik:RadLabel id="Label146" runat="server" Text="<%$ Resources: Label146 %>" />
												<telerik:RadComboBox id="ComboBox84" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox84 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox84_OnItemsRequested" RenderMode="Classic" TabIndex="135" />
												<telerik:RadLabel id="Label147" runat="server" Text="<%$ Resources: Label147 %>" />
											</telerik:RadWizardStep>
											<telerik:RadWizardStep id="WizardPageOutros" runat="server" Title="<%$ Resources: WizardPageOutros %>">
												<telerik:RadComboBox id="ComboBox85" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox85 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox85_OnItemsRequested" RenderMode="Classic" TabIndex="136" />
												<telerik:RadLabel id="Label148" runat="server" Text="<%$ Resources: Label148 %>" />
												<telerik:RadComboBox id="ComboBox86" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox86 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox86_OnItemsRequested" RenderMode="Classic" TabIndex="137" />
												<telerik:RadLabel id="Label149" runat="server" Text="<%$ Resources: Label149 %>" />
												<telerik:RadComboBox id="ComboBox87" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox87 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox87_OnItemsRequested" RenderMode="Classic" TabIndex="138" />
												<telerik:RadLabel id="Label150" runat="server" Text="<%$ Resources: Label150 %>" />
												<telerik:RadComboBox id="ComboBox88" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox88 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox88_OnItemsRequested" RenderMode="Classic" TabIndex="139" />
												<telerik:RadLabel id="Label151" runat="server" Text="<%$ Resources: Label151 %>" />
												<telerik:RadComboBox id="ComboBox89" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox89 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox89_OnItemsRequested" RenderMode="Classic" TabIndex="140" />
												<telerik:RadLabel id="Label152" runat="server" Text="<%$ Resources: Label152 %>" />
												<telerik:RadComboBox id="ComboBox90" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox90 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox90_OnItemsRequested" RenderMode="Classic" TabIndex="141" />
												<telerik:RadLabel id="Label153" runat="server" Text="<%$ Resources: Label153 %>" />
												<telerik:RadComboBox id="ComboBox91" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox91 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox91_OnItemsRequested" RenderMode="Classic" TabIndex="142" />
												<telerik:RadLabel id="Label154" runat="server" Text="<%$ Resources: Label154 %>" />
												<telerik:RadComboBox id="ComboBox92" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
													CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
													ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox92 %>" MarkFirstMatch="true"
													MaxHeight="100" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
													OnItemsRequested="___ComboBox92_OnItemsRequested" RenderMode="Classic" TabIndex="143" />
												<telerik:RadLabel id="Label155" runat="server" Text="<%$ Resources: Label155 %>" />
											</telerik:RadWizardStep>
										</WizardSteps>
								</telerik:RadWizard>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage5" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="52" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage6" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
									OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
									OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
									OnUpdateCommand="Grid_UpdateCommand" PageSize="15" RenderMode="Classic" ShowGroupPanel="False" TabIndex="50" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid1_EditColumn" UniqueName="Grid1_EditColumn"/>
											<telerik:GridDateTimeColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="DATA" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy" Exportable="True"
												FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn3 %>"
												ItemStyle-Width="86" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="PROT" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="VTR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridDateTimeColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="QTR" DataFormatString="{0:HH:mm:ss}" EditDataFormatString="HH:mm:ss" Exportable="True"
												FilterDateFormat="HH:mm:ss" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn6 %>"
												ItemStyle-Width="86" MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True" />
											<telerik:GridCheckBoxColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="RONDA" Exportable="True" ForceExtractValue="Always" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="86" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn8" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="DELIGENCIA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn8 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
											<telerik:GridTemplateColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ENCARREGADO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="ENCARREGADO ENCARREGADO Group By ENCARREGADO" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn9 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="ENCARREGADO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn9_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn9_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn9_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn9", Eval("ENCARREGADO").ToString())%>' Value='<%#Eval("ENCARREGADO").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="AUXILIAR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="AUXILIAR AUXILIAR Group By AUXILIAR" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn10 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="AUXILIAR" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn10_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn10_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn10_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn10", Eval("AUXILIAR").ToString())%>' Value='<%#Eval("AUXILIAR").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="AUXILIAR2" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="AUXILIAR2 AUXILIAR2 Group By AUXILIAR2" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn11 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="AUXILIAR2" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn11_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn11_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn11_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn11", Eval("AUXILIAR2").ToString())%>' Value='<%#Eval("AUXILIAR2").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="MOTORISTA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="MOTORISTA MOTORISTA Group By MOTORISTA" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn12 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="MOTORISTA" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn12_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn12_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn12_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn12", Eval("MOTORISTA").ToString())%>' Value='<%#Eval("MOTORISTA").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="OBSERVACOES" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
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
								<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="51" Text="<%$ Resources: Button3 %>" />
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
					setTimeout("var $j = jQuery.noConflict();$j('#RadTextBox2').first().focus();", 200);
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
				case "Button4":
					New(this);return false;
				break;
				case "Button5":
					Save(this);return false;
				break;
				case "Button6":
					Cancel(this);return false;
				break;
				case "Button7":
					Remove(this,true);return false;
				break;
				case "Button9":
					Previous(this);return false;
				break;
				case "Button10":
					Next(this);return false;
				break;
				case "Button12":
					Filter();return false;
				break;
				case "Button13":
					Edit(this);return false;
				break;
			}
			MainAjaxPanel.ajaxRequestWithTarget('MainAjaxPanel', CommandArgument);
		}
		function ID() { return document.getElementById("RadTextBox1").value; }
		function N_PROCESSO() { return document.getElementById("RadTextBox2").value; }
		function NOME() { return document.getElementById("RadTextBox4").value; }
		function RG() { return document.getElementById("RadTextBox5").value; }
		function CPF() { return document.getElementById("RadTextBox6").value; }
		function CIDADE() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function BAIRRO() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function RESPONSAVEL_CONTATO() { return document.getElementById("RadTextBox7").value; }
		function DATA_BO() { return document.getElementById("DatePicker1").value; }
		function NATUREZA_BO() { return $find("<%= ComboBox4.ClientID %>").get_value(); }
		function OUTRA_BO() { return document.getElementById("RadTextBox8").value; }
		function DATA_DO_INDEFERIMENTO() { return document.getElementById("DatePicker2").value; }
		function DATA_CONTATO() { return document.getElementById("DatePicker3").value; }
		function AUTOR_PRESENTE() { return $find("<%= ComboBox5.ClientID %>").get_value(); }
		function NACIONALIDADE() { return document.getElementById("RadTextBox9").value; }
		function NATURALIDADE() { return document.getElementById("RadTextBox10").value; }
		function UF() { return $find("<%= ComboBox6.ClientID %>").get_value(); }
		function TIPO_LOGRADOURO() { return $find("<%= ComboBox7.ClientID %>").get_value(); }
		function LOGRADOURO() { return $find("<%= ComboBox8.ClientID %>").get_value(); }
		function CEP() { return document.getElementById("RadTextBox11").value; }
		function TELEFONE() { return document.getElementById("RadTextBox12").value; }
		function CELULAR() { return document.getElementById("RadTextBox13").value; }
		function EMAIL() { return document.getElementById("RadTextBox14").value; }
		function EMPRESA() { return document.getElementById("RadTextBox15").value; }
		function ENDERECO_EMPRESA() { return document.getElementById("RadTextBox16").value; }
		function TELEFONE_EMPRESA() { return document.getElementById("RadTextBox17").value; }
		function NUMERO() { return document.getElementById("RadTextBox48").value; }
		function AUTOR() { return document.getElementById("RadTextBox18").value; }
		function RG_AUTOR() { return document.getElementById("RadTextBox19").value; }
		function CPF_AUTOR() { return document.getElementById("RadTextBox20").value; }
		function UF_AUTOR() { return $find("<%= ComboBox9.ClientID %>").get_value(); }
		function CIDADE_AUTOR() { return $find("<%= ComboBox10.ClientID %>").get_value(); }
		function BAIRRO_AUTOR() { return $find("<%= ComboBox11.ClientID %>").get_value(); }
		function TIPO_LOGRADOURO_AUTOR() { return $find("<%= ComboBox12.ClientID %>").get_value(); }
		function LOGRADOURO_AUTOR() { return $find("<%= ComboBox13.ClientID %>").get_value(); }
		function CEP_AUTOR() { return document.getElementById("RadTextBox21").value; }
		function TELEFONE_AUTOR() { return document.getElementById("RadTextBox22").value; }
		function CELULAR_AUTOR() { return document.getElementById("RadTextBox23").value; }
		function EMPRESA_AUTOR() { return document.getElementById("RadTextBox24").value; }
		function ENDERECO_EMPRESA_AUTOR() { return document.getElementById("RadTextBox25").value; }
		function TELEFONE_EMPRESA_AUTOR() { return document.getElementById("RadTextBox26").value; }
		function POSSUI_ARMA() { return document.getElementById("RadCheckBox1").value; }
		function FAZ_USO_DROGAS() { return document.getElementById("RadCheckBox2").value; }
		function QUAL_DROGA() { return document.getElementById("RadTextBox27").value; }
		function ATUALCITUACAO() { return document.getElementById("RadTextBox28").value; }
		function SENTIMENTO_VITIMA() { return document.getElementById("RadTextBox29").value; }
		function PRETENDE_REATAR_PQ() { return document.getElementById("RadTextBox39").value; }
		function q1_1() { return $find("<%= ComboBox14.ClientID %>").get_value(); }
		function q1_2() { return $find("<%= ComboBox15.ClientID %>").get_value(); }
		function q1_3() { return $find("<%= ComboBox16.ClientID %>").get_value(); }
		function q1_4() { return $find("<%= ComboBox17.ClientID %>").get_value(); }
		function q1_5() { return $find("<%= ComboBox18.ClientID %>").get_value(); }
		function q1_6() { return $find("<%= ComboBox19.ClientID %>").get_value(); }
		function q1_7() { return $find("<%= ComboBox20.ClientID %>").get_value(); }
		function q2_1() { return $find("<%= ComboBox21.ClientID %>").get_value(); }
		function q2_2() { return $find("<%= ComboBox22.ClientID %>").get_value(); }
		function q2_3() { return $find("<%= ComboBox23.ClientID %>").get_value(); }
		function q2_3_Especificar() { return document.getElementById("RadTextBox40").value; }
		function q2_4() { return $find("<%= ComboBox24.ClientID %>").get_value(); }
		function q2_4_Especificar() { return document.getElementById("RadTextBox41").value; }
		function q2_5() { return $find("<%= ComboBox25.ClientID %>").get_value(); }
		function q2_5_Especificar() { return document.getElementById("RadTextBox42").value; }
		function q2_6() { return $find("<%= ComboBox26.ClientID %>").get_value(); }
		function q2_6_Especificar() { return document.getElementById("RadTextBox43").value; }
		function q2_8() { return $find("<%= ComboBox28.ClientID %>").get_value(); }
		function q2_8_Especificar() { return document.getElementById("RadTextBox44").value; }
		function q2_7() { return $find("<%= ComboBox29.ClientID %>").get_value(); }
		function q3_1() { return $find("<%= ComboBox30.ClientID %>").get_value(); }
		function q3_1_Especificar() { return document.getElementById("RadTextBox45").value; }
		function q3_2() { return $find("<%= ComboBox31.ClientID %>").get_value(); }
		function q3_3() { return $find("<%= ComboBox32.ClientID %>").get_value(); }
		function q3_4() { return $find("<%= ComboBox33.ClientID %>").get_value(); }
		function q3_5() { return $find("<%= ComboBox34.ClientID %>").get_value(); }
		function q3_6() { return $find("<%= ComboBox35.ClientID %>").get_value(); }
		function q3_7() { return $find("<%= ComboBox36.ClientID %>").get_value(); }
		function q11_1() { return $find("<%= ComboBox37.ClientID %>").get_value(); }
		function q11_2() { return $find("<%= ComboBox38.ClientID %>").get_value(); }
		function q11_3() { return $find("<%= ComboBox39.ClientID %>").get_value(); }
		function q11_4() { return $find("<%= ComboBox40.ClientID %>").get_value(); }
		function q11_5() { return $find("<%= ComboBox41.ClientID %>").get_value(); }
		function q11_6() { return $find("<%= ComboBox42.ClientID %>").get_value(); }
		function q12_1() { return $find("<%= ComboBox43.ClientID %>").get_value(); }
		function q12_2() { return $find("<%= ComboBox44.ClientID %>").get_value(); }
		function q12_3() { return $find("<%= ComboBox45.ClientID %>").get_value(); }
		function q12_4() { return $find("<%= ComboBox46.ClientID %>").get_value(); }
		function q12_5() { return $find("<%= ComboBox47.ClientID %>").get_value(); }
		function q12_6() { return $find("<%= ComboBox48.ClientID %>").get_value(); }
		function q12_7() { return $find("<%= ComboBox49.ClientID %>").get_value(); }
		function q12_8() { return $find("<%= ComboBox50.ClientID %>").get_value(); }
		function q12_9() { return $find("<%= ComboBox66.ClientID %>").get_value(); }
		function q12_10() { return $find("<%= ComboBox67.ClientID %>").get_value(); }
		function q12_11() { return $find("<%= ComboBox68.ClientID %>").get_value(); }
		function q12_12() { return $find("<%= ComboBox54.ClientID %>").get_value(); }
		function q12_13() { return $find("<%= ComboBox55.ClientID %>").get_value(); }
		function q12_14() { return $find("<%= ComboBox56.ClientID %>").get_value(); }
		function q12_15() { return $find("<%= ComboBox57.ClientID %>").get_value(); }
		function q12_16() { return $find("<%= ComboBox58.ClientID %>").get_value(); }
		function q12_17() { return $find("<%= ComboBox59.ClientID %>").get_value(); }
		function q12_18() { return $find("<%= ComboBox60.ClientID %>").get_value(); }
		function q12_19() { return $find("<%= ComboBox61.ClientID %>").get_value(); }
		function q12_20() { return $find("<%= ComboBox62.ClientID %>").get_value(); }
		function q12_21() { return $find("<%= ComboBox63.ClientID %>").get_value(); }
		function q12_22() { return $find("<%= ComboBox64.ClientID %>").get_value(); }
		function q12_23() { return $find("<%= ComboBox65.ClientID %>").get_value(); }
		function q12_24() { return $find("<%= ComboBox69.ClientID %>").get_value(); }
		function q12_25() { return $find("<%= ComboBox70.ClientID %>").get_value(); }
		function q12_26() { return $find("<%= ComboBox71.ClientID %>").get_value(); }
		function q12_27() { return $find("<%= ComboBox72.ClientID %>").get_value(); }
		function q12_28() { return $find("<%= ComboBox73.ClientID %>").get_value(); }
		function q12_29() { return $find("<%= ComboBox74.ClientID %>").get_value(); }
		function q13_1() { return $find("<%= ComboBox75.ClientID %>").get_value(); }
		function q13_1_1() { return document.getElementById("RadTextBox46").value; }
		function q13_2() { return $find("<%= ComboBox76.ClientID %>").get_value(); }
		function q13_3() { return $find("<%= ComboBox77.ClientID %>").get_value(); }
		function q13_3_1() { return document.getElementById("RadTextBox47").value; }
		function q14_1() { return $find("<%= ComboBox78.ClientID %>").get_value(); }
		function q14_2() { return $find("<%= ComboBox79.ClientID %>").get_value(); }
		function q14_3() { return $find("<%= ComboBox80.ClientID %>").get_value(); }
		function q14_4() { return $find("<%= ComboBox81.ClientID %>").get_value(); }
		function q14_5() { return $find("<%= ComboBox82.ClientID %>").get_value(); }
		function q14_6() { return $find("<%= ComboBox83.ClientID %>").get_value(); }
		function q14_7() { return $find("<%= ComboBox84.ClientID %>").get_value(); }
		function q15_1() { return $find("<%= ComboBox85.ClientID %>").get_value(); }
		function q15_2() { return $find("<%= ComboBox86.ClientID %>").get_value(); }
		function q15_3() { return $find("<%= ComboBox87.ClientID %>").get_value(); }
		function q15_4() { return $find("<%= ComboBox88.ClientID %>").get_value(); }
		function q15_5() { return $find("<%= ComboBox89.ClientID %>").get_value(); }
		function q15_6() { return $find("<%= ComboBox90.ClientID %>").get_value(); }
		function q15_7() { return $find("<%= ComboBox91.ClientID %>").get_value(); }
		function q15_8() { return $find("<%= ComboBox92.ClientID %>").get_value(); }
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
						EnableDisableToolbarButtons(gToolbar.id,"Button4",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button5",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button6",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button9",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button10",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button12",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button13",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
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
				$j("#RadTextBox5").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox6").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox7").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox8").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox9").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox10").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox11").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox12").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox13").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox14").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox15").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox16").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox17").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox48").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox18").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox19").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox20").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox21").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox22").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox23").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox24").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox25").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox26").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox27").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox28").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox29").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox39").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox40").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox41").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox42").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox43").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox44").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox45").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox46").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox47").bind("keydown", InitiateEditAuto);
				$j("#RadCheckBox1").bind("change", InitiateEditAuto);
				$j("#RadCheckBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox4").bind("change", InitiateEditAuto);
				$j("#ComboBox5").bind("change", InitiateEditAuto);
				$j("#ComboBox6").bind("change", InitiateEditAuto);
				$j("#ComboBox7").bind("change", InitiateEditAuto);
				$j("#ComboBox8").bind("change", InitiateEditAuto);
				$j("#ComboBox9").bind("change", InitiateEditAuto);
				$j("#ComboBox10").bind("change", InitiateEditAuto);
				$j("#ComboBox11").bind("change", InitiateEditAuto);
				$j("#ComboBox12").bind("change", InitiateEditAuto);
				$j("#ComboBox13").bind("change", InitiateEditAuto);
				$j("#ComboBox14").bind("change", InitiateEditAuto);
				$j("#ComboBox15").bind("change", InitiateEditAuto);
				$j("#ComboBox16").bind("change", InitiateEditAuto);
				$j("#ComboBox17").bind("change", InitiateEditAuto);
				$j("#ComboBox18").bind("change", InitiateEditAuto);
				$j("#ComboBox19").bind("change", InitiateEditAuto);
				$j("#ComboBox20").bind("change", InitiateEditAuto);
				$j("#ComboBox21").bind("change", InitiateEditAuto);
				$j("#ComboBox22").bind("change", InitiateEditAuto);
				$j("#ComboBox23").bind("change", InitiateEditAuto);
				$j("#ComboBox24").bind("change", InitiateEditAuto);
				$j("#ComboBox25").bind("change", InitiateEditAuto);
				$j("#ComboBox26").bind("change", InitiateEditAuto);
				$j("#ComboBox28").bind("change", InitiateEditAuto);
				$j("#ComboBox29").bind("change", InitiateEditAuto);
				$j("#ComboBox30").bind("change", InitiateEditAuto);
				$j("#ComboBox31").bind("change", InitiateEditAuto);
				$j("#ComboBox32").bind("change", InitiateEditAuto);
				$j("#ComboBox33").bind("change", InitiateEditAuto);
				$j("#ComboBox34").bind("change", InitiateEditAuto);
				$j("#ComboBox35").bind("change", InitiateEditAuto);
				$j("#ComboBox36").bind("change", InitiateEditAuto);
				$j("#ComboBox37").bind("change", InitiateEditAuto);
				$j("#ComboBox38").bind("change", InitiateEditAuto);
				$j("#ComboBox39").bind("change", InitiateEditAuto);
				$j("#ComboBox40").bind("change", InitiateEditAuto);
				$j("#ComboBox41").bind("change", InitiateEditAuto);
				$j("#ComboBox42").bind("change", InitiateEditAuto);
				$j("#ComboBox43").bind("change", InitiateEditAuto);
				$j("#ComboBox44").bind("change", InitiateEditAuto);
				$j("#ComboBox45").bind("change", InitiateEditAuto);
				$j("#ComboBox46").bind("change", InitiateEditAuto);
				$j("#ComboBox47").bind("change", InitiateEditAuto);
				$j("#ComboBox48").bind("change", InitiateEditAuto);
				$j("#ComboBox49").bind("change", InitiateEditAuto);
				$j("#ComboBox50").bind("change", InitiateEditAuto);
				$j("#ComboBox66").bind("change", InitiateEditAuto);
				$j("#ComboBox67").bind("change", InitiateEditAuto);
				$j("#ComboBox68").bind("change", InitiateEditAuto);
				$j("#ComboBox54").bind("change", InitiateEditAuto);
				$j("#ComboBox55").bind("change", InitiateEditAuto);
				$j("#ComboBox56").bind("change", InitiateEditAuto);
				$j("#ComboBox57").bind("change", InitiateEditAuto);
				$j("#ComboBox58").bind("change", InitiateEditAuto);
				$j("#ComboBox59").bind("change", InitiateEditAuto);
				$j("#ComboBox60").bind("change", InitiateEditAuto);
				$j("#ComboBox61").bind("change", InitiateEditAuto);
				$j("#ComboBox62").bind("change", InitiateEditAuto);
				$j("#ComboBox63").bind("change", InitiateEditAuto);
				$j("#ComboBox64").bind("change", InitiateEditAuto);
				$j("#ComboBox65").bind("change", InitiateEditAuto);
				$j("#ComboBox69").bind("change", InitiateEditAuto);
				$j("#ComboBox70").bind("change", InitiateEditAuto);
				$j("#ComboBox71").bind("change", InitiateEditAuto);
				$j("#ComboBox72").bind("change", InitiateEditAuto);
				$j("#ComboBox73").bind("change", InitiateEditAuto);
				$j("#ComboBox74").bind("change", InitiateEditAuto);
				$j("#ComboBox75").bind("change", InitiateEditAuto);
				$j("#ComboBox76").bind("change", InitiateEditAuto);
				$j("#ComboBox77").bind("change", InitiateEditAuto);
				$j("#ComboBox78").bind("change", InitiateEditAuto);
				$j("#ComboBox79").bind("change", InitiateEditAuto);
				$j("#ComboBox80").bind("change", InitiateEditAuto);
				$j("#ComboBox81").bind("change", InitiateEditAuto);
				$j("#ComboBox82").bind("change", InitiateEditAuto);
				$j("#ComboBox83").bind("change", InitiateEditAuto);
				$j("#ComboBox84").bind("change", InitiateEditAuto);
				$j("#ComboBox85").bind("change", InitiateEditAuto);
				$j("#ComboBox86").bind("change", InitiateEditAuto);
				$j("#ComboBox87").bind("change", InitiateEditAuto);
				$j("#ComboBox88").bind("change", InitiateEditAuto);
				$j("#ComboBox89").bind("change", InitiateEditAuto);
				$j("#ComboBox90").bind("change", InitiateEditAuto);
				$j("#ComboBox91").bind("change", InitiateEditAuto);
				$j("#ComboBox92").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker2").bind("change", InitiateEditAuto);
				$j("#DatePicker2_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker3").bind("change", InitiateEditAuto);
				$j("#DatePicker3_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label16").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label16").innerText = ""; }
					try { document.getElementById("Label18").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label18").innerText = ""; }
		}

	</script>
</html>
