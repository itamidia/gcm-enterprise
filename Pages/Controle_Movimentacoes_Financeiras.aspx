<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Controle_Movimentacoes_Financeiras, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/Controle_Movimentacoes_Financeiras.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../JS/Controle_Movimentacoes_Financeiras_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
		function GridColumn2_Validation(field, rules, i, options) {
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
						AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
						OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
						OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
						OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False" DataField="TIPO"
									Exportable="True" FilterControlWidth="85" ForceExtractValue="Always" GroupByExpression="TIPO TIPO Group By TIPO" HeaderStyle-Width="120"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="113" ReadOnly="False" SortExpression="TIPO" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn2_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn2_Validation]]" data-validation-message="TIPO não pode ser vazio!"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn2_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="105" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn2_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn2", Eval("TIPO").ToString())%>' Value='<%#Eval("TIPO").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn2_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn2_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="105" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn2_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn2ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn2_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn2", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridDateTimeColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="DATA" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy" Exportable="True"
									FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn3 %>"
									ItemStyle-Width="86" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="VALOR" DataFormatString="{0:##,###,###,##0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn4 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="CATEGORIA" Exportable="True" FilterControlWidth="146" ForceExtractValue="Always"
									GroupByExpression="CATEGORIA CATEGORIA Group By CATEGORIA" HeaderStyle-Width="181" HeaderText="<%$ Resources: GridColumn5 %>"
									ItemStyle-Width="174" ReadOnly="False" SortExpression="CATEGORIA" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn5_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn5_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="166" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn5_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn5", Eval("CATEGORIA").ToString())%>' Value='<%#Eval("CATEGORIA").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn5_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn5_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="166" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn5_ComboBox_FilterIndexChanging"/>
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
									DataField="DESCRICAO" Exportable="True" FilterControlWidth="472" ForceExtractValue="Always" HeaderStyle-Width="507"
									HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="500" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumn7" runat="server" ButtonType="PushButton" CommandName="GridColumn7" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn7_1 %>" Visible="True" />
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
							</Columns>
							<CommandItemSettings ShowAddNewRecordButton="False" AddNewRecordText="" RefreshText="" />
						</MasterTableView>
						<PagerStyle Mode="NextPrevAndNumeric" />
						<ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="true">
							<ClientEvents />
						<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
						</ClientSettings>
					</telerik:RadGrid>
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="2" Text="<%$ Resources: Button1 %>" />
						<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="3" Text="<%$ Resources: Button2 %>" />
						<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="4" Text="<%$ Resources: Button3 %>" />
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
