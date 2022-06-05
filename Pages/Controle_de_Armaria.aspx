<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Controle_de_Armaria, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/Controle_de_Armaria.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../JS/Controle_de_Armaria_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
						<asp:Button id="Button17" runat="server" CommandName="Button17" OnClick="___Button17_OnClick" OnClientClick="this.disabled = true;"
							TabIndex="18" />
						<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
					</div>
					<telerik:RadGrid id="GridCautela" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
						OnInsertCommand="Grid_InsertCommand" OnItemCommand="GridCautela_ItemCommand" OnItemCreated="GridCautela_ItemCreated"
						OnItemDataBound="GridCautela_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10"
						RenderMode="Classic" ShowGroupPanel="False" TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_SAIDA_ARMARIA" EditMode="InPlace" OnItemCreated="GridCautela_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ID_SAIDA_ARMARIA" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="38" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="73" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="66" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="DATA" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" EditDataFormatString="dd/MM/yyyy HH:mm:ss"
									Exportable="True" FilterDateFormat="dd/MM/yyyy HH:mm:ss" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="86" MaxLength="19" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False" DataField="GCM_RE"
									Exportable="True" FilterControlWidth="38" ForceExtractValue="Always" GroupByExpression="GCM_RE GCM_RE Group By GCM_RE" HeaderStyle-Width="73"
									HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="66" ReadOnly="False" SortExpression="GCM_RE" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn3_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___GridCautela_GridColumn3_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn3_Label" Text='<%#PageProvider.GetGridComboText("GridCautela_GridColumn3", Eval("GCM_RE").ToString())%>' Value='<%#Eval("GCM_RE").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn3_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___GridCautela_GridColumn3_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn3_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn3ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn3_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn3", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ARMEIRO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ARMA" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn7 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="MUNICAO_QTDE" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="38" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="73" HeaderText="<%$ Resources: GridColumn9 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="66" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="CARREGADOR" Exportable="True" FilterControlWidth="38" ForceExtractValue="Always"
									GroupByExpression="CARREGADOR CARREGADOR Group By CARREGADOR" HeaderStyle-Width="73" HeaderText="<%$ Resources: GridColumn11 %>"
									ItemStyle-Width="66" ReadOnly="False" SortExpression="CARREGADOR" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn11_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___GridCautela_GridColumn11_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn11_Label" Text='<%#PageProvider.GetGridComboText("GridCautela_GridColumn11", Eval("CARREGADOR").ToString())%>' Value='<%#Eval("CARREGADOR").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn11_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___GridCautela_GridColumn11_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn11_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn11ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn11_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn11", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="RADIOHT" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" GroupByExpression="RADIOHT RADIOHT Group By RADIOHT"
									HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-Width="86" ReadOnly="False" SortExpression="RADIOHT"
									Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn13_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___GridCautela_GridColumn13_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn13_Label" Text='<%#PageProvider.GetGridComboText("GridCautela_GridColumn13", Eval("RADIOHT").ToString())%>' Value='<%#Eval("RADIOHT").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn13_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___GridCautela_GridColumn13_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn13_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn13ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn13_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn13", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn15" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="ALGEMA" Exportable="True" FilterControlWidth="38" ForceExtractValue="Always" GroupByExpression="ALGEMA ALGEMA Group By ALGEMA"
									HeaderStyle-Width="73" HeaderText="<%$ Resources: GridColumn15 %>" ItemStyle-Width="66" ReadOnly="False" SortExpression="ALGEMA"
									Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn15_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___GridCautela_GridColumn15_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn15_Label" Text='<%#PageProvider.GetGridComboText("GridCautela_GridColumn15", Eval("ALGEMA").ToString())%>' Value='<%#Eval("ALGEMA").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn15_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___GridCautela_GridColumn15_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn15_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn15ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn15_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn15", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn17" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="COLETE" Exportable="True" FilterControlWidth="38" ForceExtractValue="Always" GroupByExpression="COLETE COLETE Group By COLETE"
									HeaderStyle-Width="73" HeaderText="<%$ Resources: GridColumn17 %>" ItemStyle-Width="66" ReadOnly="False" SortExpression="COLETE"
									Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn17_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___GridCautela_GridColumn17_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn17_Label" Text='<%#PageProvider.GetGridComboText("GridCautela_GridColumn17", Eval("COLETE").ToString())%>' Value='<%#Eval("COLETE").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn17_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___GridCautela_GridColumn17_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn17_ComboBox_FilterIndexChanging"/>
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
								<telerik:GridTemplateColumn UniqueName="GridColumn19" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False" DataField="TONFA"
									Exportable="True" FilterControlWidth="38" ForceExtractValue="Always" GroupByExpression="TONFA TONFA Group By TONFA" HeaderStyle-Width="73"
									HeaderText="<%$ Resources: GridColumn19 %>" ItemStyle-Width="66" ReadOnly="False" SortExpression="TONFA" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn19_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___GridCautela_GridColumn19_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn19_Label" Text='<%#PageProvider.GetGridComboText("GridCautela_GridColumn19", Eval("TONFA").ToString())%>' Value='<%#Eval("TONFA").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn19_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___GridCautela_GridColumn19_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="58" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn19_ComboBox_FilterIndexChanging"/>
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
								<telerik:GridBoundColumn UniqueName="GridColumn21" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="SEG_ARMA" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn21 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn25" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="MUNICAO_QTDE_SEG" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="38"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="73"
									HeaderText="<%$ Resources: GridColumn25 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="66" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumnbOTAO" runat="server" ButtonType="PushButton" CommandName="GridColumnbOTAO" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumnbOTAO %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumnbOTAO_1 %>" Visible="True" />
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
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="2" Text="<%$ Resources: Button1 %>" />
						<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="3" Text="<%$ Resources: Button2 %>" />
						<asp:Button id="Button3" runat="server" CommandName="Button3" OnClick="___Button3_OnClick" TabIndex="4" Text="<%$ Resources: Button3 %>" />
						<asp:Button id="Button4" runat="server" CommandName="Button4" OnClick="___Button4_OnClick" TabIndex="5" Text="<%$ Resources: Button4 %>" />
						<asp:Button id="Button5" runat="server" CommandName="Button5" OnClick="___Button5_OnClick" TabIndex="6" Text="<%$ Resources: Button5 %>" />
						<asp:Button id="Button6" runat="server" CommandName="Button6" OnClick="___Button6_OnClick" TabIndex="7" Text="<%$ Resources: Button6 %>" />
						<asp:Button id="Button7" runat="server" CommandName="Button7" OnClick="___Button7_OnClick" TabIndex="8" Text="<%$ Resources: Button7 %>" />
						<asp:Button id="Button8" runat="server" CommandName="Button8" OnClick="___Button8_OnClick" TabIndex="9" Text="<%$ Resources: Button8 %>" />
						<asp:Button id="Button9" runat="server" CommandName="Button9" OnClick="___Button9_OnClick" TabIndex="10" Text="<%$ Resources: Button9 %>" />
						<asp:Button id="Button10" runat="server" CommandName="Button10" OnClick="___Button10_OnClick" TabIndex="11" Text="<%$ Resources: Button10 %>" />
						<asp:Button id="Button11" runat="server" CommandName="Button11" OnClick="___Button11_OnClick" TabIndex="12" Text="<%$ Resources: Button11 %>" />
						<asp:Button id="Button12" runat="server" CommandName="Button12" OnClick="___Button12_OnClick" TabIndex="13" Text="<%$ Resources: Button12 %>" />
						<asp:Button id="Button13" runat="server" CommandName="Button13" OnClick="___Button13_OnClick" TabIndex="14" Text="<%$ Resources: Button13 %>" />
						<asp:Button id="Button14" runat="server" CommandName="Button14" OnClick="___Button14_OnClick" TabIndex="15" Text="<%$ Resources: Button14 %>" />
						<asp:Button id="Button15" runat="server" CommandName="Button15" OnClick="___Button15_OnClick" TabIndex="16" Text="<%$ Resources: Button15 %>" />
						<asp:Button id="Button16" runat="server" CommandName="Button16" OnClick="___Button16_OnClick" TabIndex="17" Text="<%$ Resources: Button16 %>" />
					</div>
					<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
					<Div id="Line1">
					</Div>
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
					setTimeout("var $j = jQuery.noConflict();$j('#GridCautela').first().focus();", 200);
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
