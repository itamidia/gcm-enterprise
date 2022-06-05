<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Listagem_de_Cautela_de_Material, App_Web_g4o5dsry" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Listagem_de_Cautela_de_Material.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../../JS/Listagem_de_Cautela_de_Material_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
						OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False"
						TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_SAIDA_ARMARIA" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ID_SAIDA_ARMARIA" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="36" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="71" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="64" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="DATA" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" EditDataFormatString="dd/MM/yyyy HH:mm:ss"
									Exportable="True" FilterDateFormat="dd/MM/yyyy HH:mm:ss" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="86" MaxLength="19" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ARMEIRO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="GCM_RE" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="35" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="70" HeaderText="<%$ Resources: GridColumn2 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="63" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ARMA" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn5 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="MUNICAO_QTDE" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn6 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CARREGADOR" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn7 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn8" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="RADIOHT" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn8 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ALGEMA" Exportable="True" FilterControlWidth="38" ForceExtractValue="Always" HeaderStyle-Width="73"
									HeaderText="<%$ Resources: GridColumn9 %>" ItemStyle-Width="66" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="COLETE" Exportable="True" FilterControlWidth="38" ForceExtractValue="Always" HeaderStyle-Width="73"
									HeaderText="<%$ Resources: GridColumn10 %>" ItemStyle-Width="66" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="TONFA" Exportable="True" FilterControlWidth="38" ForceExtractValue="Always" HeaderStyle-Width="73"
									HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-Width="66" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="SEG_ARMA" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn12 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="STATUS" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="38" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="73" HeaderText="<%$ Resources: GridColumn13 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="66" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridButtonColumn UniqueName="GridColumn14" runat="server" ButtonType="PushButton" CommandName="GridColumn14" Exportable="True"
									Groupable="false" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn14 %>" ItemStyle-Width="86"
									Text="<%$ Resources: GridColumn14_1 %>" Visible="True" />
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
