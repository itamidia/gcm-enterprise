<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Controle_de_Recursos_Humanos, App_Web_o3n4gjlu" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/Controle_de_Recursos_Humanos.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../JS/Controle_de_Recursos_Humanos_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
		function GridColumn14_Validation(field, rules, i, options) {
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
						OnUpdateCommand="Grid_UpdateCommand" PageSize="20" RenderMode="Classic" ShowGroupPanel="False" TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="GCM_ID,GCM_RE_MATRICULA,GCM_RG,GCM_CPF" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="17" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="52" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="45" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_GUERRA" Exportable="True" FilterControlWidth="50" ForceExtractValue="Always" HeaderStyle-Width="85"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="78" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_NOME" Exportable="True" FilterControlWidth="214" ForceExtractValue="Always" HeaderStyle-Width="249"
									HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="242" MaxLength="50" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_RE_MATRICULA" DataFormatString="{0:###################0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="20" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_RG" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-Width="86" MaxLength="15" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_CPF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_FUNCAO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_CNH" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-Width="86" MaxLength="15" ReadOnly="False" Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="GCM_VALIDADE_CNH" DataFormatString="{0:dd/MM/yy}" EditDataFormatString="dd/MM/yy"
									Exportable="True" FilterDateFormat="dd/MM/yy" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn12 %>"
									ItemStyle-Width="86" MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_RG_FUNCIONAL_PMJ" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="GCM_STATUS" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="GCM_STATUS GCM_STATUS Group By GCM_STATUS" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn14 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="GCM_STATUS" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn14_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn14_Validation]]" data-validation-message="STATUS não pode ser vazio!"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn14_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn14_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn14", Eval("GCM_STATUS").ToString())%>' Value='<%#Eval("GCM_STATUS").ToString()%>'/>
									</ItemTemplate> 
									<FilterTemplate>
										<telerik:RadComboBox ID="GridColumn14_ComboBox_Filter" runat="server" AllowCustomText="False" TabIndex="1"
											EnableLoadOnDemand="True" EnableVirtualScrolling="True" OnClientKeyPressing="Combo_HandleKeyPress" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
											OnItemsRequested="___Grid1_GridColumn14_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" OnClientSelectedIndexChanging="GridColumn14_ComboBox_FilterIndexChanging"/>
										<telerik:RadScriptBlock ID="GridColumn14ScriptBlock" runat="server">
											<script type="text/javascript">
												function GridColumn14_ComboBox_FilterIndexChanging(sender, args) {
													if (sender.get_value() != args.get_item().get_value()) {
														var tableView = $find("<%# ((GridItem)Container).OwnerTableView.ClientID %>");
														tableView.filter("GridColumn14", args.get_item().get_value(), "EqualTo");
													}
												}
											</script>
										</telerik:RadScriptBlock>
									</FilterTemplate>
								</telerik:GridTemplateColumn>
								<telerik:GridButtonColumn UniqueName="GridColumn15" runat="server" ButtonType="PushButton" CommandName="GridColumn15" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn15 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn15_1 %>" Visible="True" />
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
						<asp:Button id="Button17" runat="server" CommandName="Button17" OnClick="___Button17_OnClick" TabIndex="18" Text="<%$ Resources: Button17 %>" />
						<asp:Button id="Button18" runat="server" CommandName="Button18" OnClick="___Button18_OnClick" TabIndex="19" Text="<%$ Resources: Button18 %>" />
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
