<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Guardia_Maria_da_Penha, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/Guardia_Maria_da_Penha.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../JS/Guardia_Maria_da_Penha_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
		function GridColumn12_Validation(field, rules, i, options) {
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
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="1" Text="<%$ Resources: Button1 %>" />
						<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="3" Text="<%$ Resources: Button2 %>" />
						<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="4" Text="<%$ Resources: Button3 %>" />
						<asp:Button id="Button4" runat="server" CommandName="Button4" OnClick="___Button4_OnClick" TabIndex="5" Text="<%$ Resources: Button4 %>" />
						<asp:Button id="Button5" runat="server" CommandName="Button5" OnClick="___Button5_OnClick" TabIndex="6" Text="<%$ Resources: Button5 %>" />
					</div>
					<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
						OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
						OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
						OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="2" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ID" DataFormatString="{0:###################0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="N_PROCESSO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="86" MaxLength="25" ReadOnly="False" Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="DATA_BO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy" Exportable="True"
									FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn6 %>"
									ItemStyle-Width="86" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="NOME" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn12 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="RG" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-Width="86" MaxLength="15" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CPF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn14 %>" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn17" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False" DataField="UF"
									Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" GroupByExpression="UF UF Group By UF" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn17 %>" ItemStyle-Width="86" ReadOnly="False" SortExpression="UF" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn17_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn17_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn17_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn17", Eval("UF").ToString())%>' Value='<%#Eval("UF").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn17_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn17_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn17_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn17ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn17_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn17", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn19" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="BAIRRO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" GroupByExpression="BAIRRO BAIRRO Group By BAIRRO"
									HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn19 %>" ItemStyle-Width="86" ReadOnly="False" SortExpression="BAIRRO"
									Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn19_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn19_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn19_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn19", Eval("BAIRRO").ToString())%>' Value='<%#Eval("BAIRRO").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn19_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn19_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn19_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn19ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn19_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn19", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridBoundColumn UniqueName="GridColumn22" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CEP" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn22 %>" ItemStyle-Width="86" MaxLength="9" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn23" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="TELEFONE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn23 %>" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn24" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CELULAR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn24 %>" ItemStyle-Width="86" MaxLength="15" ReadOnly="False" Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumn25" runat="server" ButtonType="PushButton" CommandName="GridColumn25" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn25 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn25_1 %>" Visible="True" />
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
							</Columns>
							<CommandItemSettings ShowAddNewRecordButton="False" AddNewRecordText="" RefreshText="" />
						</MasterTableView>
						<PagerStyle Mode="NextPrevAndNumeric" />
						<ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="true">
							<Scrolling AllowScroll="True"/>
							<ClientEvents />
						<Resizing EnableRealTimeResize="True" ResizeGridOnColumnResize="True" AllowColumnResize="True" />
						</ClientSettings>
					</telerik:RadGrid>
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
					setTimeout("var $j = jQuery.noConflict();$j('#Button1').first().focus();", 200);
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
