<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Mapa_Forca, App_Web_mj1bal1d" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Mapa_Forca.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Mapa_Forca_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
		function Grid4Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid4ShouldDisable")[0] && $j("#Grid4ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
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
		function GridColumn23_Validation(field, rules, i, options) {
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
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="240">
							<Items>
								<telerik:RadToolBarButton id="Button1" runat="server" CssClass="Button1" CommandArgument="Button1" CommandName="Button1" TabIndex="6"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="7"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="8"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button6" runat="server" CssClass="Button6" CommandArgument="Button6" CommandName="Button6" TabIndex="9"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="10"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button9" runat="server" CssClass="Button9" CommandArgument="Button9" CommandName="Button9" TabIndex="11"
									ToolTip="Especifica expressão de filtragem" />
								<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="12"
									ToolTip="Inicia edição no registro atual" />
							</Items>
						</telerik:RadToolBar>
						<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
						<telerik:RadComboBox id="ComboBox3" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
							CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
							ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
							OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
							OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="13" />
						<asp:Button id="Button11" runat="server" CommandName="Button11" OnClick="___Button11_OnClick" OnClientClick="this.disabled = true;"
							TabIndex="16" />
					</div>
					<telerik:RadTextBox id="Numero_Cecom" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#FF0000"
						MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_Numero_Cecom_wrapper" />
					<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
					<telerik:RadDatePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
						DatePickerType="Date" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade"
						MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade"
						TabIndex="1" Width="180px">
					</telerik:RadDatePicker>
					<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
					<telerik:RadLabel id="Label3" runat="server" Text="<%$ Resources: Label3 %>" />
					<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#000000"
						MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine"
						WrapperCssClass="c_RadTextBox2_wrapper" />
					<telerik:RadLabel id="Label4" runat="server" Text="<%$ Resources: Label4 %>" />
					<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="3" />
					<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
					<telerik:RadComboBox id="ComboBox2" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="4" />
					<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link1" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link1 %>" />
						<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
						<asp:LinkButton id="Link2" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link2 %>" />
						<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
						<telerik:RadLabel id="Label11" runat="server" />
						<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
						<telerik:RadLabel id="Label13" runat="server" />
						<asp:LinkButton id="Link3" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link3 %>" />
						<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
						<asp:LinkButton id="Link4" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link4 %>" />
					</div>
					<div style="position:absolute !important;left:30px;top:130px;width:895px;height:654px">
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
								<telerik:RadTab id="TabItem6" runat="server" Text="<%$ Resources: TabPage6 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="628px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid3" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
									OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid3_ItemCommand" OnItemCreated="Grid3_ItemCreated"
									OnItemDataBound="Grid3_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
									RenderMode="Classic" ShowGroupPanel="False" TabIndex="20" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_OM" EditMode="InPlace" OnItemCreated="Grid3_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid3_EditColumn" UniqueName="Grid3_EditColumn"/>
											<telerik:GridTemplateColumn UniqueName="GridColumnViatura" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="OM_VIATURA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="OM_VIATURA OM_VIATURA Group By OM_VIATURA" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumnViatura %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="OM_VIATURA" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumnViatura_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumnViatura_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumnViatura_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumnViatura", Eval("OM_VIATURA").ToString())%>' Value='<%#Eval("OM_VIATURA").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn27" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="OM_ENCARREGADO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="OM_ENCARREGADO OM_ENCARREGADO Group By OM_ENCARREGADO" HeaderStyle-Width="93"
												HeaderText="<%$ Resources: GridColumn27 %>" ItemStyle-Width="86" ReadOnly="False" SortExpression="OM_ENCARREGADO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn27_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn27_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn27_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn27", Eval("OM_ENCARREGADO").ToString())%>' Value='<%#Eval("OM_ENCARREGADO").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn28" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="OM_MOTORISTA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="OM_MOTORISTA OM_MOTORISTA Group By OM_MOTORISTA" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn28 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="OM_MOTORISTA" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn28_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn28_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn28_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn28", Eval("OM_MOTORISTA").ToString())%>' Value='<%#Eval("OM_MOTORISTA").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn29" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="OM_AUXILIAR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="OM_AUXILIAR OM_AUXILIAR Group By OM_AUXILIAR" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn29 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="OM_AUXILIAR" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn29_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn29_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn29_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn29", Eval("OM_AUXILIAR").ToString())%>' Value='<%#Eval("OM_AUXILIAR").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn32" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="OM_SETOR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="OM_SETOR OM_SETOR Group By OM_SETOR" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn32 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="OM_SETOR" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn32_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn32_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn32_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn32", Eval("OM_SETOR").ToString())%>' Value='<%#Eval("OM_SETOR").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn33" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="OM_HORARIO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="OM_HORARIO OM_HORARIO Group By OM_HORARIO" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn33 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="OM_HORARIO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn33_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid3_GridColumn33_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn33_Label" Text='<%#PageProvider.GetGridComboText("Grid3_GridColumn33", Eval("OM_HORARIO").ToString())%>' Value='<%#Eval("OM_HORARIO").ToString()%>'/>
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
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid2" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
									OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid2_ItemCommand" OnItemCreated="Grid2_ItemCreated"
									OnItemDataBound="Grid2_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
									RenderMode="Classic" ShowGroupPanel="False" TabIndex="19" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_ES" EditMode="InPlace" OnItemCreated="Grid2_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid2_EditColumn" UniqueName="Grid2_EditColumn"/>
											<telerik:GridTemplateColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ES_VIATURA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="ES_VIATURA ES_VIATURA Group By ES_VIATURA" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn12 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="ES_VIATURA" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn12_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn12_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn12_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn12", Eval("ES_VIATURA").ToString())%>' Value='<%#Eval("ES_VIATURA").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ES_ENCARREGADO" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="ES_ENCARREGADO ES_ENCARREGADO Group By ES_ENCARREGADO" HeaderStyle-Width="143"
												HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-Width="136" ReadOnly="False" SortExpression="ES_ENCARREGADO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn13_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn13_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn13_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn13", Eval("ES_ENCARREGADO").ToString())%>' Value='<%#Eval("ES_ENCARREGADO").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ES_MOTORISTA" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="ES_MOTORISTA ES_MOTORISTA Group By ES_MOTORISTA" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn14 %>"
												ItemStyle-Width="136" ReadOnly="False" SortExpression="ES_MOTORISTA" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn14_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn14_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn14_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn14", Eval("ES_MOTORISTA").ToString())%>' Value='<%#Eval("ES_MOTORISTA").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn15" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ES_AUXILIAR" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="ES_AUXILIAR ES_AUXILIAR Group By ES_AUXILIAR" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn15 %>"
												ItemStyle-Width="136" ReadOnly="False" SortExpression="ES_AUXILIAR" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn15_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn15_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn15_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn15", Eval("ES_AUXILIAR").ToString())%>' Value='<%#Eval("ES_AUXILIAR").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn18" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ES_SETOR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
												GroupByExpression="ES_SETOR ES_SETOR Group By ES_SETOR" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn18 %>"
												ItemStyle-Width="86" ReadOnly="False" SortExpression="ES_SETOR" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn18_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn18_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="78" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn18_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn18", Eval("ES_SETOR").ToString())%>' Value='<%#Eval("ES_SETOR").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn19" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="ES_HORARIO" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="ES_HORARIO ES_HORARIO Group By ES_HORARIO" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn19 %>"
												ItemStyle-Width="136" ReadOnly="False" SortExpression="ES_HORARIO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn19_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid2_GridColumn19_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn19_Label" Text='<%#PageProvider.GetGridComboText("Grid2_GridColumn19", Eval("ES_HORARIO").ToString())%>' Value='<%#Eval("ES_HORARIO").ToString()%>'/>
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
									<ClientSettings>
										<ClientEvents OnGridCreated="Grid2Created" />
									</ClientSettings>
								</telerik:RadGrid>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage3" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
									OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand" OnItemCreated="Grid1_ItemCreated"
									OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
									RenderMode="Classic" ShowGroupPanel="False" TabIndex="18" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_PF" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid1_EditColumn" UniqueName="Grid1_EditColumn"/>
											<telerik:GridTemplateColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="PF_POSTO" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="PF_POSTO PF_POSTO Group By PF_POSTO" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn3 %>"
												ItemStyle-Width="136" ReadOnly="False" SortExpression="PF_POSTO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn3_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn3_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn3_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn3", Eval("PF_POSTO").ToString())%>' Value='<%#Eval("PF_POSTO").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="PF_GCM" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always" GroupByExpression="PF_GCM PF_GCM Group By PF_GCM"
												HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="136" ReadOnly="False" SortExpression="PF_GCM"
												Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn4_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn4_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn4_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn4", Eval("PF_GCM").ToString())%>' Value='<%#Eval("PF_GCM").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="PF_GCM2" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="PF_GCM2 PF_GCM2 Group By PF_GCM2" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn5 %>"
												ItemStyle-Width="136" ReadOnly="False" SortExpression="PF_GCM2" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn5_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn5_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn5_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn5", Eval("PF_GCM2").ToString())%>' Value='<%#Eval("PF_GCM2").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="PF_GCM3" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="PF_GCM3 PF_GCM3 Group By PF_GCM3" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn6 %>"
												ItemStyle-Width="136" ReadOnly="False" SortExpression="PF_GCM3" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn6_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn6_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn6_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn6", Eval("PF_GCM3").ToString())%>' Value='<%#Eval("PF_GCM3").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
											<telerik:GridTemplateColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="PF_HORARIO" Exportable="True" FilterControlWidth="108" ForceExtractValue="Always"
												GroupByExpression="PF_HORARIO PF_HORARIO Group By PF_HORARIO" HeaderStyle-Width="143" HeaderText="<%$ Resources: GridColumn9 %>"
												ItemStyle-Width="136" ReadOnly="False" SortExpression="PF_HORARIO" Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn9_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn9_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="128" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn9_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn9", Eval("PF_HORARIO").ToString())%>' Value='<%#Eval("PF_HORARIO").ToString()%>'/>
												</ItemTemplate> 
											</telerik:GridTemplateColumn>
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
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage4" runat="server" BackColor="#FFFFFF">
								<telerik:RadGrid id="Grid4" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
									AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
									OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid4_ItemCommand"
									OnItemCreated="Grid4_ItemCreated" OnItemDataBound="Grid4_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
									OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="21" TableLayout="Fixed">
									<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid4_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
										<Columns>
											<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid4_EditColumn" UniqueName="Grid4_EditColumn"/>
											<telerik:GridBoundColumn UniqueName="GridColumn22" runat="server" AllowFiltering="True" AllowSorting="true"
												ConvertEmptyStringToNull="False" DataField="N_FOLGA" Exportable="True" FilterControlWidth="118" ForceExtractValue="Always"
												HeaderStyle-Width="153" HeaderText="<%$ Resources: GridColumn22 %>" ItemStyle-Width="146" MaxLength="20" ReadOnly="False" Visible="True" />
											<telerik:GridTemplateColumn UniqueName="GridColumn23" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
												DataField="GCM_RE" Exportable="True" FilterControlWidth="168" ForceExtractValue="Always" GroupByExpression="GCM_RE GCM_RE Group By GCM_RE"
												HeaderStyle-Width="203" HeaderText="<%$ Resources: GridColumn23 %>" ItemStyle-Width="196" ReadOnly="False" SortExpression="GCM_RE"
												Visible="True">
												<EditItemTemplate>
													<telerik:RadComboBox ID="GridColumn23_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
														 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
														OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
														OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn23_Validation]]" data-validation-message="GCM_RE não pode ser vazio!"
														OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid4_GridColumn23_ComboBox_OnItemsRequested" ItemsPerRequest="15"
														Width="188" ClientIDMode="Static" />
												</EditItemTemplate>
												<ItemTemplate> 
													<asp:Label runat="server" ID="GridColumn23_Label" Text='<%#PageProvider.GetGridComboText("Grid4_GridColumn23", Eval("GCM_RE").ToString())%>' Value='<%#Eval("GCM_RE").ToString()%>'/>
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
								<gas:GEditor id="GEditor2" runat="server" EnableEmbeddedSkins="True" TabIndex="15" ViewMode="Design" />
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage6" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="14" ViewMode="Design" />
							</telerik:RadPageView>
						</telerik:RadMultiPage>
					</div>
					<telerik:RadComboBox id="ComboBox4" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox4 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox4_OnItemsRequested" RenderMode="Classic" TabIndex="17" />
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
		function STATUS() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function ID_MAPA() { return document.getElementById("Numero_Cecom").value; }
		function DATA() { return document.getElementById("DatePicker1").value; }
		function RADIO_OPERADOR() { return document.getElementById("RadTextBox2").value; }
		function EQUIPE() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function INTERESSADO() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function HORARIO_PLANTAO() { return $find("<%= ComboBox4.ClientID %>").get_value(); }
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
						EnableDisableToolbarButtons(gToolbar.id,"Button6",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button9",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button10",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
						DisableLink(Link1, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link2, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link3, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						DisableLink(Link4, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
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
				$j("#Numero_Cecom").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox2").bind("keydown", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox4").bind("change", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label11").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label11").innerText = ""; }
					try { document.getElementById("Label13").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label13").innerText = ""; }
		}

	</script>
</html>
