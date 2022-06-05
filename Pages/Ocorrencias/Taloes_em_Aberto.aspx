<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Taloes_em_Aberto, App_Web_bisnh1gg" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Taloes_em_Aberto.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Taloes_em_Aberto_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
					<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
						OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand" OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound"
						OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False"
						TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_TALAO" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ID_TALAO" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="26" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="61" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="54" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="TAL_DATA" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" EditDataFormatString="dd/MM/yyyy HH:mm:ss"
									Exportable="True" FilterDateFormat="dd/MM/yyyy HH:mm:ss" ForceExtractValue="Always" HeaderStyle-Width="101"
									HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="94" MaxLength="19" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="TAL_NUMERO" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="66" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="101" HeaderText="<%$ Resources: GridColumn6 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="94" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="TAL_VIATURA" Exportable="True" FilterControlWidth="109" ForceExtractValue="Always"
									GroupByExpression="TAL_VIATURA TAL_VIATURA Group By TAL_VIATURA" HeaderStyle-Width="144" HeaderText="<%$ Resources: GridColumn7 %>"
									ItemStyle-Width="137" ReadOnly="False" SortExpression="TAL_VIATURA" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn7_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn7_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="129" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn7_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn7", Eval("TAL_VIATURA").ToString())%>' Value='<%#Eval("TAL_VIATURA").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridBoundColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="TAL_NAT_INICIO" Exportable="True" FilterControlWidth="66" ForceExtractValue="Always" HeaderStyle-Width="101"
									HeaderText="<%$ Resources: GridColumn10 %>" ItemStyle-Width="94" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="TAL_STATUS" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="TAL_STATUS TAL_STATUS Group By TAL_STATUS" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn12 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="TAL_STATUS" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn12_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn12_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn12_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn12", Eval("TAL_STATUS").ToString())%>' Value='<%#Eval("TAL_STATUS").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridButtonColumn UniqueName="GridColumn11" runat="server" ButtonType="PushButton" CommandName="GridColumn11" Exportable="True"
									Groupable="false" HeaderStyle-Width="127" HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-Width="120"
									Text="<%$ Resources: GridColumn11_1 %>" Visible="True" />
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
							</Columns>
							<CommandItemSettings ShowAddNewRecordButton="False" AddNewRecordText="" RefreshText="" />
						</MasterTableView>
						<PagerStyle Mode="NextPrevAndNumeric" />
						<ClientSettings>
							<Scrolling AllowScroll="True"/>
							<ClientEvents />
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
