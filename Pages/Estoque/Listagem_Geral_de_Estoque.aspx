<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Listagem_Geral_de_Estoque, App_Web_wz1zfzss" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Listagem_Geral_de_Estoque.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Listagem_Geral_de_Estoque_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
		function GridColumn10_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
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
		function GridColumn13_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn14_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn15_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function GridColumn16_Validation(field, rules, i, options) {
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
					<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableEmbeddedSkins="True" EnableLinqExpressions="false"
						OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
						OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
						OnUpdateCommand="Grid_UpdateCommand" PageSize="30" RenderMode="Classic" ShowGroupPanel="False" Skin="MetroTouch" TabIndex="1"
						TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ESTOQUE_ID" EditMode="InPlace" EnableEmbeddedSkins="True" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand" Skin="MetroTouch">
							<Columns>
								<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid1_EditColumn" UniqueName="Grid1_EditColumn"/>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="38" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="73" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="66" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_N_CONTROLE" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_N_PATRIMONIO" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_DESCRICAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_GRUPO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="ESTOQUE_GRUPO ESTOQUE_GRUPO Group By ESTOQUE_GRUPO" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn5 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="ESTOQUE_GRUPO" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox Skin="MetroTouch" ID="GridColumn5_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn5_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn5_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn5", Eval("ESTOQUE_GRUPO").ToString())%>' Value='<%#Eval("ESTOQUE_GRUPO").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox Skin="MetroTouch" ID="GridColumn5_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn5_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn5_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn5ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn5_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn5", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_SUBGRUPO" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_MODELO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="86" MaxLength="25" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn8" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_MARCA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn8 %>" ItemStyle-Width="86" MaxLength="25" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_TIPO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="ESTOQUE_TIPO ESTOQUE_TIPO Group By ESTOQUE_TIPO" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn9 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="ESTOQUE_TIPO" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox Skin="MetroTouch" ID="GridColumn9_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn9_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn9_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn9", Eval("ESTOQUE_TIPO").ToString())%>' Value='<%#Eval("ESTOQUE_TIPO").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox Skin="MetroTouch" ID="GridColumn9_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn9_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn9_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn9ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn9_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn9", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_FORNECEDOR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="ESTOQUE_FORNECEDOR ESTOQUE_FORNECEDOR Group By ESTOQUE_FORNECEDOR" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn10 %>" ItemStyle-Width="86" ReadOnly="False" SortExpression="ESTOQUE_FORNECEDOR" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox Skin="MetroTouch" ID="GridColumn10_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn10_Validation]]" data-validation-message="FORNECEDOR não pode ser vazio!"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn10_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn10_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn10", Eval("ESTOQUE_FORNECEDOR").ToString())%>' Value='<%#Eval("ESTOQUE_FORNECEDOR").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox Skin="MetroTouch" ID="GridColumn10_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn10_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn10_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn10ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn10_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn10", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridBoundColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_REFERENCIA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_QTDE" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn12 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_VALOR" DataFormatString="{0:##,###,##0.00}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn13 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="13" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_MINIMO" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn14 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn15" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_MAXIMO" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn15 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn16" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTOQUE_DEPARTAMENTO" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn16 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False"
									Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumn17" runat="server" ButtonType="PushButton" CommandName="GridColumn17" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn17 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn17_1 %>" Visible="True" />
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
							</Columns>
							<EditFormSettings>
								<EditColumn ButtonType="ImageButton" />
							</EditFormSettings>
							<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText=""  ShowExportToExcelButton="true" ShowExportToPdfButton="true" ShowExportToCsvButton="true"/>
						</MasterTableView>
						<ExportSettings HideStructureColumns="true" ExportOnlyData="true" IgnorePaging="false" OpenInNewWindow="False" UseItemStyles="true">
							<Pdf PageHeight ="297mm" PageWidth="210mm"></Pdf>
						</ExportSettings>
						<PagerStyle Mode="NextPrevAndNumeric" />
						<ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="true">
							<Scrolling AllowScroll="True"/>
							<ClientEvents />
						<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
						</ClientSettings>
					</telerik:RadGrid>
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
					setTimeout("var $j = jQuery.noConflict();$j('#Grid1').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
