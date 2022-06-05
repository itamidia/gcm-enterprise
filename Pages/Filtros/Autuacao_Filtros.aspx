<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Autuacao_Filtros, App_Web_mj1bal1d" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Autuacao_Filtros.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../../JS/Autuacao_Filtros_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
						OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="50" RenderMode="Classic" ShowGroupPanel="False"
						TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="NUM_AUTO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="86" MaxLength="7" ReadOnly="False" Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="DATA" DataFormatString="{0:dd/MM/yy}" EditDataFormatString="dd/MM/yy" Exportable="True"
									FilterDateFormat="dd/MM/yy" ForceExtractValue="Always" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="86"
									MaxLength="8" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="HORARIO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="86" MaxLength="13" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="TIPO_ESTABELECIMENTO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESTABELECIMENTO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="PROPRIETARIO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-Width="86" MaxLength="30" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CNPJ" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn9 %>" ItemStyle-Width="86" MaxLength="19" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CPF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn10 %>" ItemStyle-Width="86" MaxLength="14" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="TIPO_LOGRADOURO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="LOGRADOURO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn12 %>" ItemStyle-Width="86" MaxLength="50" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="Nº" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="58" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn13 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="25" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="BAIRRO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn14 %>" ItemStyle-Width="86" MaxLength="72" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn15" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CIDADE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn15 %>" ItemStyle-Width="86" MaxLength="60" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn16" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CEP" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn16 %>" ItemStyle-Width="86" MaxLength="9" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn17" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="UF" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn17 %>" ItemStyle-Width="86" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
							</Columns>
							<CommandItemSettings ShowAddNewRecordButton="False" AddNewRecordText="" RefreshText=""  ShowExportToExcelButton="true" ShowExportToWordButton="true" ShowExportToPdfButton="true"/>
						</MasterTableView>
						<ExportSettings HideStructureColumns="true" ExportOnlyData="true" IgnorePaging="false" OpenInNewWindow="True" UseItemStyles="true">
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
					<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="2" Text="<%$ Resources: Button1 %>" />
					<telerik:RadDatePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DatePickerType="Date"
						DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900"
						PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="3"
						Width="170px">
					</telerik:RadDatePicker>
					<telerik:RadDatePicker id="DatePicker2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DatePickerType="Date"
						DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900"
						PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="4"
						Width="170px">
					</telerik:RadDatePicker>
					<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
					<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
					<telerik:RadLabel id="Label3" runat="server" Text="<%$ Resources: Label3 %>" />
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="5" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="6" Text="<%$ Resources: Button2 %>" />
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
		function dp1() { return document.getElementById("DatePicker1").value; }
		function dp2() { return document.getElementById("DatePicker2").value; }
		function busca() { return document.getElementById("RadTextBox1").value; }
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
