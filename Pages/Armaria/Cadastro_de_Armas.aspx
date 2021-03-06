<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Cadastro_de_Armas, App_Web_g4o5dsry" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Cadastro_de_Armas.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Cadastro_de_Armas_USER.js?sv=1.127.2017" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/validation.js"></script>
	
	<script type="text/javascript">	   

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
						"ComboBox1" : jQuery("#ComboBox1")[0].control.get_value(),
					};
					break;
				case "ComboBox3":
					AditionalFields = 
					{
						"ComboBox2" : jQuery("#ComboBox2")[0].control.get_value(),
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
				case "ComboBox1":
					PrepareAndRequestItems(new Array("ComboBox2", "ComboBox3"));
					break;
				case "ComboBox2":
					PrepareAndRequestItems(new Array("ComboBox3"));
					break;
			}
		}
	</script>
	<script language="JavaScript" type="text/javascript">
		function RadTextBox2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox4_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox6_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox10_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox12_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox13_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox14_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox15_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox16_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox17_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox18_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox19_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox20_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox5_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ___ComboBox5_OnBlur(sender)
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="300">
							<Items>
								<telerik:RadToolBarButton id="Button1" runat="server" CssClass="Button1" CommandArgument="Button1" CommandName="Button1" TabIndex="23"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="24"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="25"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="26"
									ToolTip="Excluir registro atual" />
								<telerik:RadToolBarButton id="Button6" runat="server" CssClass="Button6" CommandArgument="Button6" CommandName="Button6" TabIndex="27"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="28"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button9" runat="server" CssClass="Button9" CommandArgument="Button9" CommandName="Button9" TabIndex="29"
									ToolTip="Especifica expressão de filtragem" />
								<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="30"
									ToolTip="Inicia edição no registro atual" />
							</Items>
						</telerik:RadToolBar>
					</div>
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#FC0202"
						MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
					<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox2_Validation]]"
						data-validation-message="NUM_DO_REGISTRO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
					<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
					<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox4_Validation]]"
						data-validation-message="RAZAO_SOCIAL não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine" WrapperCssClass="c_RadTextBox4_wrapper" />
					<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
					<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
					<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox6_Validation]]"
						data-validation-message="NUM_SINARM não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="17"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="7" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
					<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
					<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
					<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
					<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
					<telerik:RadTextBox id="RadTextBox10" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox10_Validation]]"
						data-validation-message="NUM_DA_ARMA não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="11" TextMode="SingleLine" WrapperCssClass="c_RadTextBox10_wrapper" />
					<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
					<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
					<telerik:RadTextBox id="RadTextBox12" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox12_Validation]]"
						data-validation-message="CAPACIDADE_DE_TIRO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine" WrapperCssClass="c_RadTextBox12_wrapper" />
					<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
					<telerik:RadTextBox id="RadTextBox13" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox13_Validation]]"
						data-validation-message="FUNCIONAMENTO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="14" TextMode="SingleLine" WrapperCssClass="c_RadTextBox13_wrapper" />
					<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
					<telerik:RadTextBox id="RadTextBox14" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox14_Validation]]"
						data-validation-message="ACABAMENTO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_RadTextBox14_wrapper" />
					<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
					<telerik:RadTextBox id="RadTextBox15" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox15_Validation]]"
						data-validation-message="QUANTIDADE_CANO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="16" TextMode="SingleLine" WrapperCssClass="c_RadTextBox15_wrapper" />
					<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
					<telerik:RadTextBox id="RadTextBox16" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox16_Validation]]"
						data-validation-message="COMPRIMENTO_CANO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="17" TextMode="SingleLine" WrapperCssClass="c_RadTextBox16_wrapper" />
					<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
					<telerik:RadTextBox id="RadTextBox17" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox17_Validation]]"
						data-validation-message="TP_DE_ALMA não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="18" TextMode="SingleLine" WrapperCssClass="c_RadTextBox17_wrapper" />
					<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
					<telerik:RadTextBox id="RadTextBox18" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox18_Validation]]"
						data-validation-message="QT_DE_RAIAS não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="SingleLine" WrapperCssClass="c_RadTextBox18_wrapper" />
					<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
					<telerik:RadTextBox id="RadTextBox19" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox19_Validation]]"
						data-validation-message="SENTIDO_RAIAS não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="20" TextMode="SingleLine" WrapperCssClass="c_RadTextBox19_wrapper" />
					<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
					<telerik:RadTextBox id="RadTextBox20" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox20_Validation]]"
						data-validation-message="PAIS_DE_FABRICACAO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="21" TextMode="SingleLine" WrapperCssClass="c_RadTextBox20_wrapper" />
					<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
						<telerik:RadLabel id="Label27" runat="server" />
						<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
						<telerik:RadLabel id="Label29" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
					<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="8" />
					<telerik:RadComboBox id="ComboBox2" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="10" />
					<telerik:RadComboBox id="ComboBox3" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="12" />
					<telerik:RadComboBox id="ComboBox4" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox4 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox4_OnItemsRequested" RenderMode="Classic" TabIndex="9" />
					<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
					<telerik:RadTextBox id="RadTextBox21" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="6" TextMode="SingleLine" WrapperCssClass="c_RadTextBox21_wrapper" />
					<telerik:RadTextBox id="RadTextBox22" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="19"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="5" TextMode="SingleLine" WrapperCssClass="c_RadTextBox22_wrapper" />
					<telerik:RadComboBox id="ComboBox5" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
						CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox5_Validation]]"
						data-validation-message="ARM_STATUS não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox5 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientBlur="___ComboBox5_OnBlur" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox5_OnItemsRequested" RenderMode="Classic" TabIndex="3" />
					<telerik:RadLabel id="Label33" runat="server" Text="<%$ Resources: Label33 %>" />
					<telerik:RadCheckBox id="RadCheckBox1" runat="server" AutoPostBack="True" Checked="False" CssClass="RadCheckBox1" RenderMode="Classic"
						TabIndex="31" Text="<%$ Resources: RadCheckBox1 %>" />
					<telerik:RadDatePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
						DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
						MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade"
						TabIndex="2" Width="162px">
					</telerik:RadDatePicker>
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
		function ARM_ID() { return document.getElementById("RadTextBox1").value; }
		function ARM_NUM_DO_REGISTRO() { return document.getElementById("RadTextBox2").value; }
		function ARM_RAZAO_SOCIAL() { return document.getElementById("RadTextBox4").value; }
		function ARM_NUM_SINARM() { return document.getElementById("RadTextBox6").value; }
		function ARM_NUM_DA_ARMA() { return document.getElementById("RadTextBox10").value; }
		function ARM_CAPACIDADE_DE_TIRO() { return document.getElementById("RadTextBox12").value; }
		function ARM_FUNCIONAMENTO() { return document.getElementById("RadTextBox13").value; }
		function ARM_ACABAMENTO() { return document.getElementById("RadTextBox14").value; }
		function ARM_QUANTIDADE_CANO() { return document.getElementById("RadTextBox15").value; }
		function ARM_COMPRIMENTO_CANO() { return document.getElementById("RadTextBox16").value; }
		function ARM_TP_DE_ALMA() { return document.getElementById("RadTextBox17").value; }
		function ARM_QT_DE_RAIAS() { return document.getElementById("RadTextBox18").value; }
		function ARM_SENTIDO_RAIAS() { return document.getElementById("RadTextBox19").value; }
		function ARM_PAIS_DE_FABRICACAO() { return document.getElementById("RadTextBox20").value; }
		function ARM_ESPECIE() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function ARM_MODELO_M() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function ARM_CALIBRE() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function ARM_MARCA() { return $find("<%= ComboBox4.ClientID %>").get_value(); }
		function ARM_CPF() { return document.getElementById("RadTextBox21").value; }
		function ARM_CNPJ_CPF() { return document.getElementById("RadTextBox22").value; }
		function ARM_STATUS() { return $find("<%= ComboBox5.ClientID %>").get_value(); }
		function ARM_DATA_DE_VENC_REGISTRO() { return document.getElementById("DatePicker1").value; }
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
				$j("#RadTextBox1").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox2").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox4").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox6").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox10").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox12").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox13").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox14").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox15").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox16").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox17").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox18").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox19").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox20").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox21").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox22").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox4").bind("change", InitiateEditAuto);
				$j("#ComboBox5").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label27").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label27").innerText = ""; }
					try { document.getElementById("Label29").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label29").innerText = ""; }
		}

	</script>
</html>
