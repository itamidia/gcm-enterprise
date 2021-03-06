<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Registros_Em_Editar_Encerrar, App_Web_4xdugpm1" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Registros_Em_Editar_Encerrar.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Registros_Em_Editar_Encerrar_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
	</script>
	<script language="JavaScript" type="text/javascript">
		function RadTextBox2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox6_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox8_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox9_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtTipoLogradouro_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtLogradouro_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtBairro_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtCidade_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtCEP_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtUF_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox1_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox3_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox4_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ___ComboBox1_OnBlur(sender)
		{
			ValidateCombo(sender);
		}
		function ___ComboBox2_OnBlur(sender)
		{
			ValidateCombo(sender);
		}
		function ___ComboBox3_OnBlur(sender)
		{
			ValidateCombo(sender);
		}
		function ___ComboBox4_OnBlur(sender)
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
					</div>
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#FE0000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
					<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox2_Validation]]"
						data-validation-message="REG_NUM_TALAO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
					<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
					<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
					<telerik:RadDateTimePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus"
						DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True"
						HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
						ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="4" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="240px">
					</telerik:RadDateTimePicker>
					<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
					<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
					<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
					<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox6_Validation]]"
						data-validation-message="REG_ATENDENTE não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="7" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
					<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
					<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
					<telerik:RadTextBox id="RadTextBox8" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox8_Validation]]"
						data-validation-message="REG_SOLICITANTE não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="9" TextMode="SingleLine" WrapperCssClass="c_RadTextBox8_wrapper" />
					<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
					<telerik:RadTextBox id="RadTextBox9" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox9_Validation]]"
						data-validation-message="REG_TELEFONE não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="15"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="10" TextMode="SingleLine" WrapperCssClass="c_RadTextBox9_wrapper" />
					<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
					<telerik:RadTextBox id="TxtTipoLogradouro" runat="server" AutoPostBack="False"
						data-validation-engine="validate[funcCall[TxtTipoLogradouro_Validation]]" data-validation-message="REG_TIPO_LOGRADOURO não pode ser vazio!"
						EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
						TabIndex="11" TextMode="SingleLine" WrapperCssClass="c_TxtTipoLogradouro_wrapper" />
					<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
					<telerik:RadTextBox id="TxtLogradouro" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtLogradouro_Validation]]"
						data-validation-message="REG_LOGRADOURO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="12" TextMode="SingleLine" WrapperCssClass="c_TxtLogradouro_wrapper" />
					<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
					<telerik:RadTextBox id="TxtBairro" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtBairro_Validation]]"
						data-validation-message="REG_BAIRRO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine" WrapperCssClass="c_TxtBairro_wrapper" />
					<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
					<telerik:RadTextBox id="TxtCidade" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtCidade_Validation]]"
						data-validation-message="REG_CIDADE não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="14" TextMode="SingleLine" WrapperCssClass="c_TxtCidade_wrapper" />
					<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
					<telerik:RadTextBox id="TxtCEP" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtCEP_Validation]]"
						data-validation-message="REG_CEP não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="16" TextMode="SingleLine" WrapperCssClass="c_TxtCEP_wrapper" />
					<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
					<telerik:RadTextBox id="TxtUF" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtUF_Validation]]"
						data-validation-message="REG_UF não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_TxtUF_wrapper" />
					<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
					<telerik:RadTextBox id="RadTextBox16" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="17" TextMode="SingleLine" WrapperCssClass="c_RadTextBox16_wrapper" />
					<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
					<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
					<telerik:RadTextBox id="RadTextBox18" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="MultiLine" WrapperCssClass="c_RadTextBox18_wrapper" />
					<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
					<telerik:RadTextBox id="RadTextBox19" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="20" TextMode="MultiLine" WrapperCssClass="c_RadTextBox19_wrapper" />
					<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
					<telerik:RadTextBox id="RadTextBox20" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="21" TextMode="MultiLine" WrapperCssClass="c_RadTextBox20_wrapper" />
					<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
					<telerik:RadDateTimePicker id="DatePicker2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus"
						DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True"
						HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
						ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="22" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="360px">
					</telerik:RadDateTimePicker>
					<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
						<telerik:RadLabel id="Label29" runat="server" />
						<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
						<telerik:RadLabel id="Label31" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<telerik:RadComboBox id="ComboBox1" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
						CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox1_Validation]]"
						data-validation-message="REG_VIATURA não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientBlur="___ComboBox1_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
						OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="3" />
					<telerik:RadComboBox id="ComboBox2" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
						CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox2_Validation]]"
						data-validation-message="REG_NATUREZA não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientBlur="___ComboBox2_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
						OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="8" />
					<telerik:RadComboBox id="ComboBox3" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
						CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox3_Validation]]"
						data-validation-message="REG_STATUS não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientBlur="___ComboBox3_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
						OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="5" />
					<telerik:RadComboBox id="ComboBox4" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
						CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox4_Validation]]"
						data-validation-message="REG_PRIORIDADE não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox4 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientBlur="___ComboBox4_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
						OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox4_OnItemsRequested" RenderMode="Classic" TabIndex="6" />
					<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="23" Text="<%$ Resources: Button1 %>" />
					<telerik:RadComboBox id="ComboBox5" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox5 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox5_OnItemsRequested" RenderMode="Classic" TabIndex="18" />
					<telerik:RadLabel id="LabBuscaRetorno" runat="server" />
					<telerik:RadToolBar id="gToolbar" runat="server" EnableRoundedCorners="True" EnableShadows="True" Height="29"
						OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="280">
						<Items>
							<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="24"
								ToolTip="Cria novo registro" />
							<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="25"
								ToolTip="Grava alterações do registro atual" />
							<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="26"
								ToolTip="Cancela modificações no registro atual" />
							<telerik:RadToolBarButton id="Button5" runat="server" CssClass="Button5" CommandArgument="Button5" CommandName="Button5" TabIndex="27"
								ToolTip="Excluir registro atual" />
							<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="28"
								ToolTip="Mover para o registro anterior" />
							<telerik:RadToolBarButton id="Button8" runat="server" CssClass="Button8" CommandArgument="Button8" CommandName="Button8" TabIndex="29"
								ToolTip="Mover para o próximo registro" />
							<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="30"
								ToolTip="Especifica expressão de filtragem" />
							<telerik:RadToolBarButton id="Button11" runat="server" CssClass="Button11" CommandArgument="Button11" CommandName="Button11" TabIndex="31"
								ToolTip="Inicia edição no registro atual" />
						</Items>
					</telerik:RadToolBar>
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
				case "Button10":
					Filter();return false;
				break;
				case "Button11":
					Edit(this);return false;
				break;
			}
		}
		function ID_REG_OCOR() { return document.getElementById("RadTextBox1").value; }
		function REG_NUM_TALAO() { return document.getElementById("RadTextBox2").value; }
		function REG_DATA() { return document.getElementById("DatePicker1").value; }
		function REG_ATENDENTE() { return document.getElementById("RadTextBox6").value; }
		function REG_SOLICITANTE() { return document.getElementById("RadTextBox8").value; }
		function REG_TELEFONE() { return document.getElementById("RadTextBox9").value; }
		function REG_TIPO_LOGRADOURO() { return document.getElementById("TxtTipoLogradouro").value; }
		function REG_LOGRADOURO() { return document.getElementById("TxtLogradouro").value; }
		function REG_BAIRRO() { return document.getElementById("TxtBairro").value; }
		function REG_CIDADE() { return document.getElementById("TxtCidade").value; }
		function REG_CEP() { return document.getElementById("TxtCEP").value; }
		function REG_UF() { return document.getElementById("TxtUF").value; }
		function REG_REFERENCIA() { return document.getElementById("RadTextBox16").value; }
		function REG_RESUMO() { return document.getElementById("RadTextBox18").value; }
		function REG_HISTORICO() { return document.getElementById("RadTextBox19").value; }
		function REG_HISTORICO_FINAL() { return document.getElementById("RadTextBox20").value; }
		function REG_DATA_FINAL() { return document.getElementById("DatePicker2").value; }
		function REG_VIATURA() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function REG_NATUREZA() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function REG_STATUS() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function REG_PRIORIDADE() { return $find("<%= ComboBox4.ClientID %>").get_value(); }
		function REG_NATUREZA_FINAL() { return $find("<%= ComboBox5.ClientID %>").get_value(); }
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
						DisableLink(Link6, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link7, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link8, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						DisableLink(Link9, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						EnableDisableToolbarButtons(gToolbar.id,"Button2",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button3",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button4",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button5",!IsAjaxProcessing && __PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button8",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button10",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
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
				$j("#RadTextBox18").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox19").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox20").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox4").bind("change", InitiateEditAuto);
				$j("#ComboBox5").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
				$j("#DatePicker2").bind("change", InitiateEditAuto);
				$j("#DatePicker2_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label29").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label29").innerText = ""; }
					try { document.getElementById("Label31").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label31").innerText = ""; }
		}

	</script>
</html>
