<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Consulta_de_Folgas_F_rias___Colaborador, App_Web_xlokkyoc" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Consulta_de_Folgas_F_rias___Colaborador.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Consulta_de_Folgas_F_rias___Colaborador_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
	<script type="text/javascript">	   

		
	</script>
    <script type="text/javascript">	    
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
	</script>
		
		<form id="Form1" runat="server">
			<asp:ScriptManager ID="MainScriptManager" runat="server"/>
			<telerik:RadAjaxPanel id="MainAjaxPanel" runat="server" class="c_MainAjaxPanel" ClientEvents-OnRequestStart="OnRequestStart" ClientEvents-OnResponseEnd="OnResponseEnd" LoadingPanelID="___Form1_AjaxLoading">
				<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labModuleTitle" runat="server" Text="<%$ Resources: Form1 %>" />
					</div>
					<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
						OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand" OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound"
						OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="30" RenderMode="Classic" ShowGroupPanel="False"
						TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="FERIAS_ID" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="FERIAS_ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="23" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="58" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="51" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="FERIAS_ID_COLABORADOR" Exportable="True" FilterControlWidth="115" ForceExtractValue="Always"
									GroupByExpression="FERIAS_ID_COLABORADOR FERIAS_ID_COLABORADOR Group By FERIAS_ID_COLABORADOR" HeaderStyle-Width="150"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="143" ReadOnly="False" SortExpression="FERIAS_ID_COLABORADOR" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn2_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn2_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="135" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn2_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn2", Eval("FERIAS_ID_COLABORADOR").ToString())%>' Value='<%#Eval("FERIAS_ID_COLABORADOR").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn2_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn2_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="135" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn2_ComboBox_FilterIndexChanging"/>
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
								<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="FERIAS_DESCRICAO" Exportable="True" FilterControlWidth="120" ForceExtractValue="Always" HeaderStyle-Width="155"
									HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="148" MaxLength="50" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="FERIAS_TIPO_FOLGA" Exportable="True" FilterControlWidth="79" ForceExtractValue="Always"
									GroupByExpression="FERIAS_TIPO_FOLGA FERIAS_TIPO_FOLGA Group By FERIAS_TIPO_FOLGA" HeaderStyle-Width="114"
									HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="107" ReadOnly="False" SortExpression="FERIAS_TIPO_FOLGA" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn4_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn4_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="99" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn4_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn4", Eval("FERIAS_TIPO_FOLGA").ToString())%>' Value='<%#Eval("FERIAS_TIPO_FOLGA").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn4_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn4_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="99" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn4_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn4ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn4_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn4", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridDateTimeColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="FERIAS_DATA_INICIO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy"
									Exportable="True" FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn5 %>"
									ItemStyle-Width="86" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="FERIAS_DATA_TERMINO" DataFormatString="{0:dd/MM/yyyy}" EditDataFormatString="dd/MM/yyyy"
									Exportable="True" FilterDateFormat="dd/MM/yyyy" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn6 %>"
									ItemStyle-Width="86" MaxLength="10" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumn7" runat="server" ButtonType="PushButton" CommandName="GridColumn7" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn7_1 %>" Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumn8" runat="server" ButtonType="PushButton" CommandName="GridColumn8" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn8 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn8_1 %>" Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumn9" runat="server" ButtonType="PushButton" CommandName="GridColumn9" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn9 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn9_1 %>" Visible="True" />
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
