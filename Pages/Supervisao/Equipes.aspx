﻿<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Equipes, App_Web_z5xkuqoz" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Equipes.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Equipes_USER.js?sv=1.127.2017" language="JavaScript"></script>
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
		function GridColumn7_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ComboBox5_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function ___ComboBox5_OnBlur(sender)
		{
			ValidateCombo(sender);
		}
	</script>
		
		<form id="Form1" runat="server">
			<asp:ScriptManager ID="MainScriptManager" runat="server"/>
			<telerik:RadAjaxPanel id="MainAjaxPanel" runat="server" class="c_MainAjaxPanel" ClientEvents-OnRequestStart="OnRequestStart" ClientEvents-OnResponseEnd="OnResponseEnd" LoadingPanelID="___Form1_AjaxLoading">
				<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labModuleTitle" runat="server" Text="<%$ Resources: Form1 %>" />
					</div>
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<telerik:RadToolBar id="gToolbar" runat="server" EnableRoundedCorners="True" EnableShadows="True" Height="29"
							OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="270">
							<Items>
								<telerik:RadToolBarButton id="Button1" runat="server" CssClass="Button1" CommandArgument="Button1" CommandName="Button1" TabIndex="9"
									ToolTip="Cria novo registro" />
								<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="10"
									ToolTip="Grava alterações do registro atual" />
								<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="11"
									ToolTip="Cancela modificações no registro atual" />
								<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="12"
									ToolTip="Excluir registro atual" />
								<telerik:RadToolBarButton id="Button6" runat="server" CssClass="Button6" CommandArgument="Button6" CommandName="Button6" TabIndex="13"
									ToolTip="Mover para o registro anterior" />
								<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="14"
									ToolTip="Mover para o próximo registro" />
								<telerik:RadToolBarButton id="Button9" runat="server" CssClass="Button9" CommandArgument="Button9" CommandName="Button9" TabIndex="15"
									ToolTip="Especifica expressão de filtragem" />
								<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="16"
									ToolTip="Inicia edição no registro atual" />
							</Items>
						</telerik:RadToolBar>
					</div>
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#FF0000"
						MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
					<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="20"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
					<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
					<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="2" />
					<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
					<telerik:RadComboBox id="ComboBox2" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox2 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox2_OnItemsRequested" RenderMode="Classic" TabIndex="3" />
					<telerik:RadLabel id="Label8" runat="server" Text="<%$ Resources: Label8 %>" />
					<telerik:RadComboBox id="ComboBox3" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox3 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox3_OnItemsRequested" RenderMode="Classic" TabIndex="4" />
					<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
					<telerik:RadComboBox id="ComboBox4" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox4 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox4_OnItemsRequested" RenderMode="Classic" TabIndex="5" />
					<telerik:RadLabel id="Label10" runat="server" Text="<%$ Resources: Label10 %>" />
					<telerik:RadComboBox id="ComboBox5" runat="server" disable-data-validation-onblur AllowCustomText="False" AutoPostBack="False"
						CollapseAnimation-Duration="300" CollapseAnimation-Type="None" data-validation-engine="validate[funcCall[ComboBox5_Validation]]"
						data-validation-message="AUXILIAR 3 não pode ser vazio!" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True"
						ExpandAnimation-Duration="300" ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox5 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientBlur="___ComboBox5_OnBlur" OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting"
						OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___ComboBox5_OnItemsRequested" RenderMode="Classic" TabIndex="6" />
					<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label12" runat="server" Text="<%$ Resources: Label12 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label13" runat="server" Text="<%$ Resources: Label13 %>" />
						<telerik:RadLabel id="Label14" runat="server" />
						<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
						<telerik:RadLabel id="Label16" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
					</div>
					<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
						OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
						OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
						OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="8" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="ID" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridBoundColumn UniqueName="GridColumn1" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="ID" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="20" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="55" HeaderText="<%$ Resources: GridColumn1 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="48" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridBoundColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="EQUIPE" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always" HeaderStyle-Width="93"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="86" MaxLength="20" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="SUPERVISOR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="SUPERVISOR SUPERVISOR Group By SUPERVISOR" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn3 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="SUPERVISOR" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn3_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn3_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn3_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn3", Eval("SUPERVISOR").ToString())%>' Value='<%#Eval("SUPERVISOR").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn4" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="MOTORISTA" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="MOTORISTA MOTORISTA Group By MOTORISTA" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn4 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="MOTORISTA" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn4_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn4_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn4_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn4", Eval("MOTORISTA").ToString())%>' Value='<%#Eval("MOTORISTA").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn5" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="AUXILIAR" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="AUXILIAR AUXILIAR Group By AUXILIAR" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn5 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="AUXILIAR" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn5_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn5_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn5_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn5", Eval("AUXILIAR").ToString())%>' Value='<%#Eval("AUXILIAR").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn6" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="AUXILIAR2" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="AUXILIAR2 AUXILIAR2 Group By AUXILIAR2" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn6 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="AUXILIAR2" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn6_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn6_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn6_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn6", Eval("AUXILIAR2").ToString())%>' Value='<%#Eval("AUXILIAR2").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn UniqueName="GridColumn7" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="AUXILIAR3" Exportable="True" FilterControlWidth="58" ForceExtractValue="Always"
									GroupByExpression="AUXILIAR3 AUXILIAR3 Group By AUXILIAR3" HeaderStyle-Width="93" HeaderText="<%$ Resources: GridColumn7 %>"
									ItemStyle-Width="86" ReadOnly="False" SortExpression="AUXILIAR3" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn7_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn7_Validation]]" data-validation-message="AUXILIAR 3 não pode ser vazio!"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn7_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="78" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn7_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn7", Eval("AUXILIAR3").ToString())%>' Value='<%#Eval("AUXILIAR3").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
							</Columns>
							<CommandItemSettings ShowAddNewRecordButton="False" AddNewRecordText="" RefreshText="" />
						</MasterTableView>
						<PagerStyle Mode="NextPrevAndNumeric" />
						<ClientSettings>
							<ClientEvents />
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
					setTimeout("var $j = jQuery.noConflict();$j('#RadTextBox2').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function ToolbarClickHandler(sender, args)
		{
			var CommandArgument = args.get_item().get_commandArgument();
			switch (CommandArgument)
			{
				case "Button1":
					New(this);return false;
				break;
				case "Button2":
					Save(this);return false;
				break;
				case "Button3":
					Cancel(this);return false;
				break;
				case "Button4":
					Remove(this,true);return false;
				break;
				case "Button6":
					Previous(this);return false;
				break;
				case "Button7":
					Next(this);return false;
				break;
				case "Button9":
					Filter();return false;
				break;
				case "Button10":
					Edit(this);return false;
				break;
			}
		}
		function ID() { return document.getElementById("RadTextBox1").value; }
		function EQUIPE() { return document.getElementById("RadTextBox2").value; }
		function SUPERVISOR() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function MOTORISTA() { return $find("<%= ComboBox2.ClientID %>").get_value(); }
		function AUXILIAR() { return $find("<%= ComboBox3.ClientID %>").get_value(); }
		function AUXILIAR2() { return $find("<%= ComboBox4.ClientID %>").get_value(); }
		function AUXILIAR3() { return $find("<%= ComboBox5.ClientID %>").get_value(); }
		function EnableButtons()
		{
				try
				{
					var __PAGESTATE = "";
					var __PAGENUMBER = 0;
					var __PAGECOUNT = 0;
					var __ISPARAMETER = "";
					var __PERMISSION = "";
					var __ALLOWINSERT = "true";
					var __ALLOWUPDATE = "true";
					var __ALLOWREMOVE = "true";
					try { __ISPARAMETER = document.getElementById("__TABLEPARAMETER").value.toLowerCase(); } catch (e) { }
					try { __PERMISSION = document.getElementById("__PERMISSION").value; } catch (e) { }
					try { __ALLOWINSERT = __PERMISSION.toString().substr(__PERMISSION.indexOf("Insert:") + 7, __PERMISSION.indexOf(";", __PERMISSION.indexOf("Insert:")) - __PERMISSION.indexOf("Insert:") - 7).toLowerCase(); } catch (e) { }
					try { __ALLOWUPDATE = __PERMISSION.toString().substr(__PERMISSION.indexOf("Edit:") + 5, __PERMISSION.indexOf(";", __PERMISSION.indexOf("Edit:")) - __PERMISSION.indexOf("Edit:") - 5).toLowerCase(); } catch (e) { }
					try { __ALLOWREMOVE = __PERMISSION.toString().substr(__PERMISSION.indexOf("Remove:") + 7, __PERMISSION.indexOf(";", __PERMISSION.indexOf("Remove:")) - __PERMISSION.indexOf("Remove:") - 7).toLowerCase(); } catch (e) { }
					try { __PAGESTATE = document.getElementById("__PAGESTATE").value.toLowerCase(); } catch (e) { }
					try { __PAGENUMBER = parseInt(document.getElementById("__PAGENUMBER").value); } catch (e) { }
					try { __PAGECOUNT = parseInt(document.getElementById("__PAGECOUNT").value); } catch (e) { }
						EnableDisableToolbarButtons(gToolbar.id,"Button1",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button2",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button3",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button4",!IsAjaxProcessing && __PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button6",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button9",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button10",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
						DisableLink(Link6, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link7, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link8, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						DisableLink(Link9, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
					try
					{
						if (getParentPage() != null && getParentPage() != self)
						{
							getParentPage().EnableButtons();
						}
					}
					catch (ex)
					{
					}
				}
				catch (ex)
				{
				}
		}

		function LoadEditAuto() {
				$j("#RadTextBox1").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox2").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
				$j("#ComboBox2").bind("change", InitiateEditAuto);
				$j("#ComboBox3").bind("change", InitiateEditAuto);
				$j("#ComboBox4").bind("change", InitiateEditAuto);
				$j("#ComboBox5").bind("change", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label14").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label14").innerText = ""; }
					try { document.getElementById("Label16").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label16").innerText = ""; }
		}

	</script>
</html>
