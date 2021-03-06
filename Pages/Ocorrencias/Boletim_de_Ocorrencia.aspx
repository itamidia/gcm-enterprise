<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Boletim_de_Ocorrencia, App_Web_bisnh1gg" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Boletim_de_Ocorrencia.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Boletim_de_Ocorrencia_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
				case "TxtLogradouro":
					AditionalFields = 
					{
						"TxtBairro" : jQuery("#TxtBairro")[0].control.get_value(),
					};
					break;
				case "TxtBairro":
					AditionalFields = 
					{
						"TxtCidade" : jQuery("#TxtCidade")[0].control.get_value(),
					};
					break;
				case "TxtCidade":
					AditionalFields = 
					{
						"TxtCidade" : jQuery("#TxtCidade")[0].control.get_value(),
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
				case "TxtBairro":
					PrepareAndRequestItems(new Array("TxtLogradouro"));
					break;
				case "TxtCidade":
					PrepareAndRequestItems(new Array("TxtBairro", "TxtLogradouro"));
					break;
			}
		}
	</script>
	<script language="JavaScript" type="text/javascript">
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
						<asp:LinkButton id="Link1" runat="server" Font-Underline="true" OnClientClick="New(this);return false;" Text="<%$ Resources: Link1 %>" />
						<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
						<asp:LinkButton id="Link2" runat="server" Font-Underline="true" OnClientClick="Edit(this);return false;" Text="<%$ Resources: Link2 %>" />
						<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
						<asp:LinkButton id="Link3" runat="server" Font-Underline="true" OnClientClick="Save(this);return false;" Text="<%$ Resources: Link3 %>" />
						<telerik:RadLabel id="Label3" runat="server" Text="<%$ Resources: Label3 %>" />
						<asp:LinkButton id="Link4" runat="server" Font-Underline="true" OnClientClick="Cancel(this);return false;" Text="<%$ Resources: Link4 %>" />
						<telerik:RadLabel id="Label4" runat="server" Text="<%$ Resources: Label4 %>" />
						<asp:LinkButton id="Link5" runat="server" Font-Underline="true" OnClientClick="Remove(this,true);return false;" Text="<%$ Resources: Link5 %>"
							/>
					</div>
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#FE0000"
						MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
					<telerik:RadTextBox id="Bol_Numero" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#FFFFFF" MaxLength="14"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_Bol_Numero_wrapper" />
					<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
					<telerik:RadTextBox id="RadTextBox3" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox3_Validation]]"
						data-validation-message="BOL_NUM_TALAO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_RadTextBox3_wrapper" />
					<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
					<telerik:RadDateTimePicker id="DatePicker1" runat="server" Calendar-ClientEvents-OnDateClick="HideDatePickerValidation"
						ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy HH:mm:ss" DatePickerType="DateTime"
						DatePopupButton-ToolTip="Select date" enabled="false" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
						MinDate="01/01/2000" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade"
						TabIndex="3" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="200px">
						<DateInput data-validation-engine="validate[funcCall[DatePicker1_Validation]]" data-validation-message="BOL_DATA não pode ser vazio!" />
					</telerik:RadDateTimePicker>
					<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
					<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
					<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="5" />
					<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
					<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
					<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="7" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
					<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
					<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
					<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
					<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
					<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
					<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
					<telerik:RadTextBox id="TxtCEP" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="9"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine" WrapperCssClass="c_TxtCEP_wrapper" />
					<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
					<telerik:RadTextBox id="RadTextBox13" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="15"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_RadTextBox13_wrapper" />
					<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
					<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
					<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
					<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
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
					<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="21" Text="<%$ Resources: Button1 %>" />
					<telerik:RadLabel id="LabBuscaRetorno" runat="server" />
					<telerik:RadComboBox id="ComboBox3" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="6" />
					<telerik:RadTextBox id="RadTextBox17" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="14" TextMode="SingleLine" WrapperCssClass="c_RadTextBox17_wrapper" />
					<telerik:RadTextBox id="RadTextBox18" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="18" TextMode="MultiLine" WrapperCssClass="c_RadTextBox18_wrapper" />
					<telerik:RadComboBox id="ComboBox4" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox4 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox4_OnItemsRequested" RenderMode="Classic" TabIndex="17" />
					<telerik:RadTextBox id="RadTextBox19" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="MultiLine" WrapperCssClass="c_RadTextBox19_wrapper" />
					<telerik:RadComboBox id="ComboBox5" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
						CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox5_Validation]]"
						data-validation-message="BOL_VIATURA não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox5 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientBlur="___ComboBox5_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
						OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox5_OnItemsRequested" RenderMode="Classic" TabIndex="16" />
					<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
					<telerik:RadTextBox id="RadTextBox20" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine" WrapperCssClass="c_RadTextBox20_wrapper" />
					<asp:Button id="Button2" runat="server" CommandName="Button2" TabIndex="22" Text="<%$ Resources: Button2 %>" />
					<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="23" Text="<%$ Resources: Button3 %>" />
					<asp:Button id="Button4" runat="server" CommandName="Button4" TabIndex="24" Text="<%$ Resources: Button4 %>" />
					<asp:Button id="Button5" runat="server" CommandName="Button5" OnClick="___Button5_OnClick" TabIndex="25" Text="<%$ Resources: Button5 %>" />
					<telerik:RadComboBox id="TxtTipoLogradouro" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtTipoLogradouro %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TxtTipoLogradouro_OnItemsRequested" RenderMode="Classic" TabIndex="8" />
					<telerik:RadComboBox id="TxtLogradouro" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtLogradouro %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TxtLogradouro_OnItemsRequested" RenderMode="Classic" TabIndex="11" />
					<telerik:RadComboBox id="TxtBairro" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtBairro %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___TxtBairro_OnItemsRequested" RenderMode="Classic" TabIndex="10" />
					<telerik:RadComboBox id="TxtCidade" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtCidade %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnClientSelectedIndexChanged="ClientRefreshCombos" OnItemsRequested="___TxtCidade_OnItemsRequested" RenderMode="Classic" TabIndex="9" />
					<telerik:RadComboBox id="TxtUF" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: TxtUF %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___TxtUF_OnItemsRequested" RenderMode="Classic" TabIndex="12" />
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
					setTimeout("var $j = jQuery.noConflict();$j('#Bol_Numero').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function BOL_OCOR_ID() { return document.getElementById("RadTextBox1").value; }
		function BOL_NUMERO() { return document.getElementById("Bol_Numero").value; }
		function BOL_NUM_TALAO() { return document.getElementById("RadTextBox3").value; }
		function BOL_DATA() { return document.getElementById("DatePicker1").value; }
		function BOL_PRIORIDADE() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function BOL_SOLICITANTE() { return document.getElementById("RadTextBox6").value; }
		function BOL_CEP() { return document.getElementById("TxtCEP").value; }
		function BOL_TELEFONE() { return document.getElementById("RadTextBox13").value; }
		function BOL_STATUS() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function BOL_REFERENCIA() { return document.getElementById("RadTextBox17").value; }
		function BOL_RESUMO() { return document.getElementById("RadTextBox18").value; }
		function BOL_NATUREZA() { return $find("<%= ComboBox4.ClientID %>").get_value(); }
		function BOL_HISTORICO() { return document.getElementById("RadTextBox19").value; }
		function BOL_VIATURA() { return $find("<%= ComboBox5.ClientID %>").get_value(); }
		function BOL_ATENDENTE() { return document.getElementById("RadTextBox20").value; }
		function BOL_TIPO_LOGRADOURO() { return $find("<%= TxtTipoLogradouro.ClientID %>").get_value(); }
		function BOL_LOGRADOURO() { return $find("<%= TxtLogradouro.ClientID %>").get_value(); }
		function BOL_BAIRRO() { return $find("<%= TxtBairro.ClientID %>").get_value(); }
		function BOL_CIDADE() { return $find("<%= TxtCidade.ClientID %>").get_value(); }
		function BOL_UF() { return $find("<%= TxtUF.ClientID %>").get_value(); }
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
						DisableLink(Link1, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false"));
						DisableLink(Link2, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true"));
						DisableLink(Link3, IsAjaxProcessing || !(__PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true")));
						DisableLink(Link4, IsAjaxProcessing || !(__PAGESTATE != "" && __PAGESTATE != "navigation"));
						DisableLink(Link5, IsAjaxProcessing || !(__PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false"));
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
				$j("#Bol_Numero").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox3").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox6").bind("keydown", InitiateEditAuto);
				$j("#TxtCEP").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox13").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox17").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox18").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox19").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox20").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox4").bind("change", InitiateEditAuto);
				$j("#ComboBox5").bind("change", InitiateEditAuto);
				$j("#TxtTipoLogradouro").bind("change", InitiateEditAuto);
				$j("#TxtLogradouro").bind("change", InitiateEditAuto);
				$j("#TxtBairro").bind("change", InitiateEditAuto);
				$j("#TxtCidade").bind("change", InitiateEditAuto);
				$j("#TxtUF").bind("change", InitiateEditAuto);
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
