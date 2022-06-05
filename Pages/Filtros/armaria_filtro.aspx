<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.armaria_filtro, App_Web_mj1bal1d" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/armaria_filtro.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../../JS/armaria_filtro_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
					<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" EnableLinqExpressions="false" OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init"
						OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand" OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound"
						OnNeedDataSource="Grid_NeedDataSource" OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False"
						TabIndex="1" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID_PASS_ARMARIA" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ID_PASS_ARMARIA" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="20"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="55"
									HeaderText="<%$ Resources: GridColumn1 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="48" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridDateTimeColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true"
									ConvertEmptyStringToNull="False" DataField="DATA" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" EditDataFormatString="dd/MM/yyyy HH:mm:ss"
									Exportable="True" FilterDateFormat="dd/MM/yyyy HH:mm:ss" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="86" MaxLength="19" PickerType="DatePicker" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn15" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="HORARIO" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="40"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="75"
									HeaderText="<%$ Resources: GridColumn15 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="68" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ARMEIRO" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn3 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="SUPERVISOR" Exportable="True" FilterControlWidth="48" ForceExtractValue="Always" HeaderStyle-Width="83"
									HeaderText="<%$ Resources: GridColumn4 %>" ItemStyle-Width="76" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="PLANTAO" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="38"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="73"
									HeaderText="<%$ Resources: GridColumn5 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="66" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="PISTOLA" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="25"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="60"
									HeaderText="<%$ Resources: GridColumn6 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="53" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="REVOLVER" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="31"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="66"
									HeaderText="<%$ Resources: GridColumn7 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="59" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn8" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ESPINGARDA" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="44"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="79"
									HeaderText="<%$ Resources: GridColumn8 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="72" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn9" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="CARREGADOR" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="51"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="86"
									HeaderText="<%$ Resources: GridColumn9 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="79" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn10" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="MUNICAO" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="34"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="69"
									HeaderText="<%$ Resources: GridColumn10 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="62" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn11" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="RADIO" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="21"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="56"
									HeaderText="<%$ Resources: GridColumn11 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="49" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn12" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="COLETE" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn12 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn13" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ALGEMA" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn13 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn14" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="TONFA" DataFormatString="{0:#,###,###,###,###,###,##0}" Exportable="True" FilterControlWidth="58"
									FooterStyle-HorizontalAlign="Right" ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn14 %>" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="86" MaxLength="25" ReadOnly="False"
									Visible="True" />
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
							</Columns>
							<CommandItemSettings ShowAddNewRecordButton="False" AddNewRecordText="" RefreshText=""  ShowExportToExcelButton="true" ShowExportToWordButton="true" ShowExportToPdfButton="true" ShowExportToCsvButton="true"/>
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
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labModuleTitle" runat="server" Text="<%$ Resources: Form1 %>" />
					</div>
					<asp:Button id="Button1" runat="server" CommandName="Button1" OnClick="___Button1_OnClick" TabIndex="2" Text="<%$ Resources: Button1 %>" />
					<telerik:RadTextBox id="TextBoxBusca" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						ReadOnly="False" RenderMode="Classic" TabIndex="6" TextMode="SingleLine" WrapperCssClass="c_TextBoxBusca_wrapper" />
					<asp:Button id="Button2" runat="server" CommandName="Button2" OnClick="___Button2_OnClick" TabIndex="3" Text="<%$ Resources: Button2 %>" />
					<telerik:RadDateTimePicker id="TextDp1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DatePickerType="DateTime"
						DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900"
						PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="4"
						TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="159px">
					</telerik:RadDateTimePicker>
					<asp:Label id="labError" runat="server" class="Error" />
					<telerik:RadDateTimePicker id="TextDp2" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DatePickerType="DateTime"
						DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300" HideAnimation-Type="Fade" MinDate="01/01/1900"
						PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic" ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="5"
						TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="159px">
					</telerik:RadDateTimePicker>
					<telerik:RadLabel id="Label4" runat="server" Text="<%$ Resources: Label4 %>" />
					<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
					<telerik:RadLabel id="Label3" runat="server" Text="<%$ Resources: Label3 %>" />
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
		function dp1() { return document.getElementById("TextDp1").value; }
		function dp2() { return document.getElementById("TextDp2").value; }
		function busca() { return document.getElementById("TextBoxBusca").value; }
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
