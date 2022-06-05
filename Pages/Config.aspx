<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Config, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Src="..\UserControls\GMultiMedia.ascx" TagName="GMultiMedia" TagPrefix="gas" %>
<%@ Register Src="..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/Config.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../JS/Config_USER.js?sv=1.127.2017" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/validation.js"></script>
	
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
		function RadTextBox14_Validation(field, rules, i, options) {
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
		function TxtTipoLogradouro2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtBairro_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtLogradouro2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtBairro2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtCidade_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtCidade2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtUF_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtCEP_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtUF2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function TxtCEP2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox9_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox10_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox21_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox22_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox11_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox23_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox12_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox24_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox13_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox25_Validation(field, rules, i, options) {
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
						<telerik:RadLabel id="LabBuscaRetorno" runat="server" />
					</div>
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label34" runat="server" Text="<%$ Resources: Label34 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label35" runat="server" Text="<%$ Resources: Label35 %>" />
						<telerik:RadLabel id="Label36" runat="server" />
						<telerik:RadLabel id="Label37" runat="server" Text="<%$ Resources: Label37 %>" />
						<telerik:RadLabel id="Label38" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label39" runat="server" Text="<%$ Resources: Label39 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<div style="position:absolute !important;left:21px;top:54px;width:989px;height:518px">
						<telerik:RadTabStrip id="TabControl1" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl1MultiPage"
							PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
							<Tabs>
								<telerik:RadTab id="TabItem1" runat="server" Selected="true" Text="<%$ Resources: TabPage1 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem2" runat="server" Text="<%$ Resources: TabPage2 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem3" runat="server" Text="<%$ Resources: tab_cabecalho %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem4" runat="server" Text="<%$ Resources: tab_rodape %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem5" runat="server" Text="<%$ Resources: tabSec %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem6" runat="server" Text="<%$ Resources: tab_sec_rod %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem7" runat="server" Text="<%$ Resources: tab_cab_maria %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem8" runat="server" Text="<%$ Resources: tab_mar_rod %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem9" runat="server" Text="<%$ Resources: TabPage3 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="492px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
								<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox2_Validation]]"
									data-validation-message="PREFEITURA não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
								<gas:GMultiMedia id="GMultiMedia1" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="True" enabled="true"
									EncryptedFile="False" Height="355px" Left="619px" MaxFileSize="0" SaveAsFile="False" SessionHandlerObjectName="FOTO28522"
									ShowDownloadLink="False" ShowImage="True" TabIndex="13" Top="39px" Visible="true" Width="360px" />
								<telerik:RadTextBox id="TxtTipoLogradouro" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[TxtTipoLogradouro_Validation]]" data-validation-message="TIPO_LOGRADOURO não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_TxtTipoLogradouro_wrapper" />
								<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
								<telerik:RadTextBox id="TxtLogradouro" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[TxtLogradouro_Validation]]" data-validation-message="LOGRADOURO não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="3" TextMode="SingleLine" WrapperCssClass="c_TxtLogradouro_wrapper" />
								<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
								<telerik:RadTextBox id="TxtBairro" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtBairro_Validation]]"
									data-validation-message="BAIRRO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine" WrapperCssClass="c_TxtBairro_wrapper" />
								<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
								<telerik:RadTextBox id="TxtCidade" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtCidade_Validation]]"
									data-validation-message="CIDADE não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="5" TextMode="SingleLine" WrapperCssClass="c_TxtCidade_wrapper" />
								<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
								<telerik:RadTextBox id="TxtUF" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtUF_Validation]]"
									data-validation-message="UF não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="6" TextMode="SingleLine" WrapperCssClass="c_TxtUF_wrapper" />
								<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
								<telerik:RadTextBox id="TxtCEP" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtCEP_Validation]]"
									data-validation-message="CEP não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="8"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="7" TextMode="SingleLine" WrapperCssClass="c_TxtCEP_wrapper" />
								<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
								<telerik:RadTextBox id="RadTextBox9" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox9_Validation]]"
									data-validation-message="TELEFONE não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="8" TextMode="SingleLine" WrapperCssClass="c_RadTextBox9_wrapper" />
								<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
								<telerik:RadTextBox id="RadTextBox10" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox10_Validation]]" data-validation-message="FAX não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="9" TextMode="SingleLine" WrapperCssClass="c_RadTextBox10_wrapper" />
								<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
								<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
								<telerik:RadTextBox id="RadTextBox11" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox11_Validation]]" data-validation-message="CNPJ não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="18" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="10" TextMode="SingleLine" WrapperCssClass="c_RadTextBox11_wrapper" />
								<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
								<telerik:RadTextBox id="RadTextBox12" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox12_Validation]]" data-validation-message="EMAIL não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="11" TextMode="SingleLine" WrapperCssClass="c_RadTextBox12_wrapper" />
								<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
								<telerik:RadTextBox id="RadTextBox13" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox13_Validation]]" data-validation-message="SITE não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="12" TextMode="SingleLine" WrapperCssClass="c_RadTextBox13_wrapper" />
								<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
								<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="27" Text="<%$ Resources: Button1 %>" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
								<gas:GMultiMedia id="GMultiMedia2" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="True" enabled="true"
									EncryptedFile="False" Height="355px" Left="619px" MaxFileSize="0" SaveAsFile="False" SessionHandlerObjectName="GCMP_FOTO28522"
									ShowDownloadLink="False" ShowImage="True" TabIndex="26" Top="39px" Visible="true" Width="360px" />
								<telerik:RadTextBox id="RadTextBox14" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox14_Validation]]" data-validation-message="GUARDA_MUNICIPAL não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="14" TextMode="SingleLine" WrapperCssClass="c_RadTextBox14_wrapper" />
								<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
								<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
								<telerik:RadTextBox id="TxtTipoLogradouro2" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[TxtTipoLogradouro2_Validation]]" data-validation-message="GCMP_TIPO_LOGRADOURO não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_TxtTipoLogradouro2_wrapper" />
								<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
								<telerik:RadTextBox id="TxtLogradouro2" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[TxtLogradouro2_Validation]]" data-validation-message="GCMP_LOGRADOURO não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="16" TextMode="SingleLine" WrapperCssClass="c_TxtLogradouro2_wrapper" />
								<telerik:RadTextBox id="TxtBairro2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtBairro2_Validation]]"
									data-validation-message="GCMP_BAIRRO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="17" TextMode="SingleLine" WrapperCssClass="c_TxtBairro2_wrapper" />
								<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
								<telerik:RadTextBox id="TxtCidade2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtCidade2_Validation]]"
									data-validation-message="GCMP_CIDADE não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="18" TextMode="SingleLine" WrapperCssClass="c_TxtCidade2_wrapper" />
								<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
								<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
								<telerik:RadTextBox id="TxtUF2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtUF2_Validation]]"
									data-validation-message="GCMP_UF não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="19" TextMode="SingleLine" WrapperCssClass="c_TxtUF2_wrapper" />
								<telerik:RadTextBox id="TxtCEP2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[TxtCEP2_Validation]]"
									data-validation-message="GCMP_CEP não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="8"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="20" TextMode="SingleLine" WrapperCssClass="c_TxtCEP2_wrapper" />
								<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
								<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="28" Text="<%$ Resources: Button2 %>" />
								<telerik:RadTextBox id="RadTextBox21" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox21_Validation]]" data-validation-message="GCMP_TELEFONE não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="21" TextMode="SingleLine" WrapperCssClass="c_RadTextBox21_wrapper" />
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<telerik:RadTextBox id="RadTextBox22" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox22_Validation]]" data-validation-message="GCMP_FAX não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="14" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="22" TextMode="SingleLine" WrapperCssClass="c_RadTextBox22_wrapper" />
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
								<telerik:RadTextBox id="RadTextBox23" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox23_Validation]]" data-validation-message="GCMP_CNPJ não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="18" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="23" TextMode="SingleLine" WrapperCssClass="c_RadTextBox23_wrapper" />
								<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
								<telerik:RadTextBox id="RadTextBox24" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox24_Validation]]" data-validation-message="GCMP_EMAIL não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="24" TextMode="SingleLine" WrapperCssClass="c_RadTextBox24_wrapper" />
								<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
								<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
								<telerik:RadTextBox id="RadTextBox25" runat="server" AutoPostBack="False"
									data-validation-engine="validate[funcCall[RadTextBox25_Validation]]" data-validation-message="GCMP_SITE não pode ser vazio!"
									EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="100" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic"
									TabIndex="25" TextMode="SingleLine" WrapperCssClass="c_RadTextBox25_wrapper" />
							</telerik:RadPageView>
							<telerik:RadPageView id="tab_cabecalho" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="29" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="tab_rodape" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor2" runat="server" EnableEmbeddedSkins="True" TabIndex="30" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="tabSec" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor3" runat="server" EnableEmbeddedSkins="True" TabIndex="34" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="tab_sec_rod" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor4" runat="server" EnableEmbeddedSkins="True" TabIndex="35" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="tab_cab_maria" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor5" runat="server" EnableEmbeddedSkins="True" TabIndex="36" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="tab_mar_rod" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor6" runat="server" EnableEmbeddedSkins="True" TabIndex="37" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage3" runat="server" BackColor="#FFFFFF">
								<telerik:RadTextBox id="RadTextBox26" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="38" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox26_wrapper" />
								<telerik:RadLabel id="Label40" runat="server" Text="<%$ Resources: Label40 %>" />
								<telerik:RadLabel id="Label41" runat="server" Text="<%$ Resources: Label41 %>" />
							</telerik:RadPageView>
						</telerik:RadMultiPage>
					</div>
					<telerik:RadToolBar id="gToolbar" runat="server" EnableRoundedCorners="True" EnableShadows="True" Height="31"
						OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="100">
						<Items>
							<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="31"
								ToolTip="Grava alterações do registro atual" />
							<telerik:RadToolBarButton id="Button5" runat="server" CssClass="Button5" CommandArgument="Button5" CommandName="Button5" TabIndex="32"
								ToolTip="Cancela modificações no registro atual" />
							<telerik:RadToolBarButton id="Button12" runat="server" CssClass="Button12" CommandArgument="Button12" CommandName="Button12" TabIndex="33"
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
					Save(this);return false;
				break;
				case "Button5":
					Cancel(this);return false;
				break;
				case "Button12":
					Edit(this);return false;
				break;
			}
		}
		function PREFEITURA() { return document.getElementById("RadTextBox2").value; }
		function TIPO_LOGRADOURO() { return document.getElementById("TxtTipoLogradouro").value; }
		function LOGRADOURO() { return document.getElementById("TxtLogradouro").value; }
		function BAIRRO() { return document.getElementById("TxtBairro").value; }
		function CIDADE() { return document.getElementById("TxtCidade").value; }
		function UF() { return document.getElementById("TxtUF").value; }
		function CEP() { return document.getElementById("TxtCEP").value; }
		function TELEFONE() { return document.getElementById("RadTextBox9").value; }
		function FAX() { return document.getElementById("RadTextBox10").value; }
		function CNPJ() { return document.getElementById("RadTextBox11").value; }
		function EMAIL() { return document.getElementById("RadTextBox12").value; }
		function SITE() { return document.getElementById("RadTextBox13").value; }
		function GUARDA_MUNICIPAL() { return document.getElementById("RadTextBox14").value; }
		function GCMP_TIPO_LOGRADOURO() { return document.getElementById("TxtTipoLogradouro2").value; }
		function GCMP_LOGRADOURO() { return document.getElementById("TxtLogradouro2").value; }
		function GCMP_BAIRRO() { return document.getElementById("TxtBairro2").value; }
		function GCMP_CIDADE() { return document.getElementById("TxtCidade2").value; }
		function GCMP_UF() { return document.getElementById("TxtUF2").value; }
		function GCMP_CEP() { return document.getElementById("TxtCEP2").value; }
		function GCMP_TELEFONE() { return document.getElementById("RadTextBox21").value; }
		function GCMP_FAX() { return document.getElementById("RadTextBox22").value; }
		function GCMP_CNPJ() { return document.getElementById("RadTextBox23").value; }
		function GCMP_EMAIL() { return document.getElementById("RadTextBox24").value; }
		function GCMP_SITE() { return document.getElementById("RadTextBox25").value; }
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
						EnableDisableToolbarButtons(gToolbar.id,"Button4",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button5",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button12",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
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
				$j("#RadTextBox2").bind("keydown", InitiateEditAuto);
				$j("#TxtTipoLogradouro").bind("keydown", InitiateEditAuto);
				$j("#TxtLogradouro").bind("keydown", InitiateEditAuto);
				$j("#TxtBairro").bind("keydown", InitiateEditAuto);
				$j("#TxtCidade").bind("keydown", InitiateEditAuto);
				$j("#TxtUF").bind("keydown", InitiateEditAuto);
				$j("#TxtCEP").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox9").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox10").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox11").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox12").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox13").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox14").bind("keydown", InitiateEditAuto);
				$j("#TxtTipoLogradouro2").bind("keydown", InitiateEditAuto);
				$j("#TxtLogradouro2").bind("keydown", InitiateEditAuto);
				$j("#TxtBairro2").bind("keydown", InitiateEditAuto);
				$j("#TxtCidade2").bind("keydown", InitiateEditAuto);
				$j("#TxtUF2").bind("keydown", InitiateEditAuto);
				$j("#TxtCEP2").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox21").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox22").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox23").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox24").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox25").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label36").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label36").innerText = ""; }
					try { document.getElementById("Label38").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label38").innerText = ""; }
		}

	</script>
</html>
