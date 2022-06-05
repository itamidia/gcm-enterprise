﻿<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Manutencao_de_Viatura, App_Web_l2yf3rw0" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Manutencao_de_Viatura.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Manutencao_de_Viatura_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
	</script>
	<script language="JavaScript" type="text/javascript">
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
		function ComboBox3_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboVIATURA_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboPLACA_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox4_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ___ComboBox2_OnBlur(sender)
		{
			ValidateCombo(sender);
		}
		function ___ComboBox3_OnBlur(sender)
		{
			ValidateCombo(sender);
		}
		function ___ComboPLACA_OnBlur(sender)
		{
			ValidateCombo(sender);
		}
		function ___ComboVIATURA_OnBlur(sender)
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="270">
							<Items>
								<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="19"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="20"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="21"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button5" runat="server" CssClass="Button5" CommandArgument="Button5" CommandName="Button5" TabIndex="22"
									ToolTip="Excluir registro atual" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="23"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button8" runat="server" CssClass="Button8" CommandArgument="Button8" CommandName="Button8" TabIndex="24"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="25"
									ToolTip="Especifica expressão de filtragem" />
								<telerik:RadToolBarButton id="Button11" runat="server" CssClass="Button11" CommandArgument="Button11" CommandName="Button11" TabIndex="26"
									ToolTip="Inicia edição no registro atual" />
							</Items>
						</telerik:RadToolBar>
					</div>
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
						<telerik:RadLabel id="Label22" runat="server" />
						<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
						<telerik:RadLabel id="Label24" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<div style="position:absolute !important;left:29px;top:55px;width:835px;height:642px">
						<telerik:RadTabStrip id="TabControl1" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl1MultiPage"
							PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
							<Tabs>
								<telerik:RadTab id="TabItem1" runat="server" Selected="true" Text="<%$ Resources: TabPage1 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem2" runat="server" Text="<%$ Resources: TabPage2 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="616px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True"
									ForeColor="#FE0000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox1_wrapper" />
								<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
								<telerik:RadDatePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="2" Width="129px">
								</telerik:RadDatePicker>
								<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="3" />
								<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
								<telerik:RadComboBox id="ComboBox3" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
									CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox3_Validation]]"
									data-validation-message="TIPO_SERVICO não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientBlur="___ComboBox3_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="4" />
								<telerik:RadComboBox id="ComboBox2" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
									CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox2_Validation]]"
									data-validation-message="OFICINA não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
									OnClientBlur="___ComboBox2_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="5" />
								<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
								<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox2_Validation]]"
									data-validation-message="DESCRICAO não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="6" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
								<telerik:RadComboBox id="ComboVIATURA" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
									CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboVIATURA_Validation]]"
									data-validation-message="VEICULO não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboVIATURA %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientBlur="___ComboVIATURA_OnBlur" OnClientItemsRequested="CheckComboItems"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboVIATURA_OnItemsRequested" RenderMode="Classic" TabIndex="7" />
								<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
								<telerik:RadComboBox id="ComboPLACA" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
									CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboPLACA_Validation]]"
									data-validation-message="PLACA não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboPLACA %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientBlur="___ComboPLACA_OnBlur" OnClientItemsRequested="CheckComboItems"
									OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
									OnItemsRequested="___ComboPLACA_OnItemsRequested" RenderMode="Classic" TabIndex="8" />
								<telerik:RadComboBox id="ComboPREFIXO" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
									CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
									ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboPREFIXO %>" MarkFirstMatch="true"
									MaxHeight="100" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
									OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboPREFIXO_OnItemsRequested" RenderMode="Classic" TabIndex="9" />
								<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
								<telerik:RadTextBox id="RadTextBox3" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="10" TextMode="SingleLine" WrapperCssClass="c_RadTextBox3_wrapper" />
								<telerik:RadDatePicker id="DatePicker4" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="11" Width="161px">
								</telerik:RadDatePicker>
								<telerik:RadDatePicker id="DatePicker2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="12" Width="171px">
								</telerik:RadDatePicker>
								<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
								<telerik:RadDatePicker id="DatePicker3" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yy"
									DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
									MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300"
									ShowAnimation-Type="Fade" TabIndex="13" Width="193px">
								</telerik:RadDatePicker>
								<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox4_Validation]]"
									data-validation-message="RESPONSAVEL não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="25"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="14" TextMode="SingleLine" WrapperCssClass="c_RadTextBox4_wrapper" />
								<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
								<telerik:RadTextBox id="RadTextBox5" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="13"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="15" TextMode="SingleLine" WrapperCssClass="c_RadTextBox5_wrapper" />
								<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
								<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
								<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
								<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
								<telerik:RadLabel id="Label16" runat="server" Text="<%$ Resources: Label16 %>" />
								<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
								<telerik:RadLabel id="Label18" runat="server" Text="<%$ Resources: Label18 %>" />
								<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
									OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
									OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
									OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="17" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid1_EditColumn" UniqueName="Grid1_EditColumn"/>
											<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="IT_ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn1 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="IT_ITEM" Exportable="True" FilterControlWidth="138" ForceExtractValue="Always"
												HeaderStyle-Width="173" HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="166" MaxLength="50" ReadOnly="False" Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="IT_QTDE" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="IT_VALOR" DataFormatString="{0:##,###,##0.00}" Exportable="True" FilterControlWidth="58"
												FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="13" ReadOnly="False"
												Visible="True" />
											<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="IT_MOTIVO_TROCA" Exportable="True" FilterControlWidth="154" ForceExtractValue="Always"
												HeaderStyle-Width="189" HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="182" MaxLength="50" ReadOnly="False" Visible="True" />
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
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<Div id="Line1">
								</Div>
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="16" ViewMode="Design" />
							</telerik:RadPageView>
						</telerik:RadMultiPage>
					</div>
					<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="18" Text="<%$ Resources: Button1 %>" />
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
		function MANUT_ID() { return document.getElementById("RadTextBox1").value; }
		function MANUT_DATA() { return document.getElementById("DatePicker1").value; }
		function MANUT_TIPO() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function MANUT_OFICINA() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function MANUT_TIPO_SERVICO() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function MANUT_DESCRICAO() { return document.getElementById("RadTextBox2").value; }
		function MANUT_PLACA() { return $find("<%= ComboPLACA.ClientID %>").get_value(); }
		function MANUT_VIATURA() { return $find("<%= ComboVIATURA.ClientID %>").get_value(); }
		function MANUT_KM() { return document.getElementById("RadTextBox3").value; }
		function MANUT_DATA_INICIO() { return document.getElementById("DatePicker2").value; }
		function MANUT_DATA_PREVISTA_TERMINO() { return document.getElementById("DatePicker3").value; }
		function MANUT_DATA_PREVISTA() { return document.getElementById("DatePicker4").value; }
		function MANUT_RESPONSAVEL() { return document.getElementById("RadTextBox4").value; }
		function MANUT_VALOR() { return document.getElementById("RadTextBox5").value; }
		function MANUT_PREFIXO() { return $find("<%= ComboPREFIXO.ClientID %>").get_value(); }
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
						EnableDisableToolbarButtons(gToolbar.id,"Button10",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button11",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
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
				$j("#RadTextBox4").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox5").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboPLACA").bind("change", InitiateEditAuto);
				$j("#ComboVIATURA").bind("change", InitiateEditAuto);
				$j("#ComboPREFIXO").bind("change", InitiateEditAuto);
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
					try { document.getElementById("Label22").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label22").innerText = ""; }
					try { document.getElementById("Label24").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label24").innerText = ""; }
		}

	</script>
</html>
