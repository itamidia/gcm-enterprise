﻿<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Entrada_Estoque, App_Web_wz1zfzss" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../../Styles/Entrada_Estoque.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/RadComboBoxHelper.js"></script>
	<script type="text/javascript" src="../../JS/Entrada_Estoque_USER.js?sv=1.127.2017" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/validation.js"></script>
	
	<script type="text/javascript">	   

		function Grid1Created(sender, args) {
			var $j = jQuery.noConflict();
			if (($j("#Grid1ShouldDisable")[0] && $j("#Grid1ShouldDisable")[0].value == "True") || ($j("#__PAGESTATE")[0] && $j("#__PAGESTATE")[0].value == "Insert"))
				DisableGrid(sender);
		}
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
		function GridColumn3_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox2_Validation(field, rules, i, options) {
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
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Button id="BtnNovo" runat="server" CommandName="BtnNovo" OnClientClick="New(this);return false;" TabIndex="6"
							Text="<%$ Resources: BtnNovo %>" />
						<asp:Button id="BtnEditar" runat="server" CommandName="BtnEditar" OnClientClick="Edit(this);return false;" TabIndex="7"
							Text="<%$ Resources: BtnEditar %>" />
						<asp:Button id="BtnSalvar" runat="server" CommandName="BtnSalvar" OnClientClick="Save(this);return false;" TabIndex="8"
							Text="<%$ Resources: BtnSalvar %>" />
						<asp:Button id="BtnCancelar" runat="server" CommandName="BtnCancelar" OnClientClick="Cancel(this);return false;" TabIndex="9"
							Text="<%$ Resources: BtnCancelar %>" />
						<asp:Button id="BtnExcluir" runat="server" CommandName="BtnExcluir" OnClientClick="Remove(this,true);return false;" TabIndex="10"
							Text="<%$ Resources: BtnExcluir %>" />
					</div>
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True" ForeColor="#000000"
						MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
					<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox2_Validation]]"
						data-validation-message="FD_NUMERO_NOTA_FISCAL não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
					<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
					<telerik:RadComboBox id="ComboBox1" runat="server" AllowCustomText="False" AutoPostBack="False" CollapseAnimation-Duration="300"
						CollapseAnimation-Type="None" EnableEmbeddedSkins="True" EnableLoadOnDemand="True" EnableVirtualScrolling="True" ExpandAnimation-Duration="300"
						ExpandAnimation-Type="None" LoadingMessage="<%$ Resources: ComboBox1 %>" MarkFirstMatch="true" MaxHeight="100"
						OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" OnClientKeyPressing="Combo_HandleKeyPress"
						OnItemsRequested="___ComboBox1_OnItemsRequested" RenderMode="Classic" TabIndex="3" />
					<telerik:RadLabel id="Label3" runat="server" Text="<%$ Resources: Label3 %>" />
					<telerik:RadTextBox id="RadTextBox3" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_RadTextBox3_wrapper" />
					<telerik:RadLabel id="Label4" runat="server" Text="<%$ Resources: Label4 %>" />
					<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="MultiLine" WrapperCssClass="c_RadTextBox4_wrapper" />
					<telerik:RadLabel id="Label5" runat="server" Text="<%$ Resources: Label5 %>" />
					<asp:Label id="labError" runat="server" class="Error" />
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link1" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link1 %>" />
						<telerik:RadLabel id="Label6" runat="server" Text="<%$ Resources: Label6 %>" />
						<asp:LinkButton id="Link2" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link2 %>" />
						<telerik:RadLabel id="Label7" runat="server" Text="<%$ Resources: Label7 %>" />
						<telerik:RadLabel id="Label8" runat="server" />
						<telerik:RadLabel id="Label9" runat="server" Text="<%$ Resources: Label9 %>" />
						<telerik:RadLabel id="Label10" runat="server" />
						<asp:LinkButton id="Link3" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link3 %>" />
						<telerik:RadLabel id="Label11" runat="server" Text="<%$ Resources: Label11 %>" />
						<asp:LinkButton id="Link4" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link4 %>" />
					</div>
					<telerik:RadGrid id="Grid1" runat="server" AllowCustomPaging="true" AllowFilteringByColumn="False" AllowPaging="True" AllowSorting="True"
						AutoGenerateColumns="false" ClientSettings-ClientEvents-OnCommand="CheckValidation" EnableLinqExpressions="false"
						OnDeleteCommand="Grid_DeleteCommand" OnInit="Grid_Init" OnInsertCommand="Grid_InsertCommand" OnItemCommand="Grid1_ItemCommand"
						OnItemCreated="Grid1_ItemCreated" OnItemDataBound="Grid1_ItemDataBound" OnNeedDataSource="Grid_NeedDataSource"
						OnUpdateCommand="Grid_UpdateCommand" PageSize="10" RenderMode="Classic" ShowGroupPanel="False" TabIndex="11" TableLayout="Fixed">
						<MasterTableView  AllowCustomPaging="true" CommandItemDisplay="Top" DataKeyNames="FD_NUMERO" EditMode="InPlace" OnItemCreated="Grid1_ItemCreated" OnUpdateCommand="Grid_UpdateCommand">
							<Columns>
								<telerik:GridEditCommandColumn Exportable="false" ButtonType="ImageButton" HeaderStyle-Width="20" ItemStyle-CssClass="Grid1_EditColumn" UniqueName="Grid1_EditColumn"/>
								<telerik:GridTemplateColumn UniqueName="GridColumn2" runat="server" AllowFiltering="True" ConvertEmptyStringToNull="False"
									DataField="FD_CODIGO_PRODUTO" Exportable="True" FilterControlWidth="338" ForceExtractValue="Always"
									GroupByExpression="FD_CODIGO_PRODUTO FD_CODIGO_PRODUTO Group By FD_CODIGO_PRODUTO" HeaderStyle-Width="373"
									HeaderText="<%$ Resources: GridColumn2 %>" ItemStyle-Width="366" ReadOnly="False" SortExpression="FD_CODIGO_PRODUTO" Visible="True">
									<EditItemTemplate>
										<telerik:RadComboBox ID="GridColumn2_ComboBox" runat="server" MarkFirstMatch="True" AllowCustomText="False" 
											 AutoPostBack="False" EnableLoadOnDemand="True" EnableVirtualScrolling="True" MaxHeight="100"
											OnClientItemsRequested="CheckComboItems" OnClientItemsRequesting="Combo_OnClientItemsRequesting" DropDownAutoWidth ="Enabled"
											OnClientBlur="ValidateCombo" data-validation-engine="validate[funcCall[GridColumn2_Validation]]" data-validation-message="FD_CODIGO_PRODUTO não pode ser vazio!"
											OnClientKeyPressing="Combo_HandleKeyPress" OnItemsRequested="___Grid1_GridColumn2_ComboBox_OnItemsRequested" ItemsPerRequest="15"
											Width="358" ClientIDMode="Static" />
									</EditItemTemplate>
									<ItemTemplate> 
										<asp:Label runat="server" ID="GridColumn2_Label" Text='<%#PageProvider.GetGridComboText("Grid1_GridColumn2", Eval("FD_CODIGO_PRODUTO").ToString())%>' Value='<%#Eval("FD_CODIGO_PRODUTO").ToString()%>'/>
									</ItemTemplate> 
								</telerik:GridTemplateColumn>
								<telerik:GridBoundColumn UniqueName="GridColumn3" runat="server" AllowFiltering="True" AllowSorting="true" ConvertEmptyStringToNull="False"
									DataField="FD_QTDE_ENTRADA" DataFormatString="{0:#########0}" Exportable="True" FilterControlWidth="106" FooterStyle-HorizontalAlign="Right"
									ForceExtractValue="Always" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Width="141" HeaderText="<%$ Resources: GridColumn3 %>"
									ItemStyle-HorizontalAlign="Right" ItemStyle-Width="134" MaxLength="10" ReadOnly="False" Visible="True" />
								<telerik:GridTemplateColumn Exportable="false" AllowFiltering="false"></telerik:GridTemplateColumn>
								<telerik:GridButtonColumn Exportable="false" HeaderStyle-Width="20" ConfirmText="Deseja excluir o registro?" ConfirmDialogType="RadWindow" ConfirmTitle="Deletar" ButtonType="ImageButton" CommandName="Delete" ItemStyle-Width="0" UniqueName="Grid1_DeleteColumn"/>
							</Columns>
							<EditFormSettings>
								<EditColumn ButtonType="ImageButton" />
							</EditFormSettings>
							<CommandItemSettings ShowAddNewRecordButton="True" AddNewRecordText="" RefreshText="" />
						</MasterTableView>
						<PagerStyle Mode="NextPrevAndNumeric" />
						<ClientSettings>
							<ClientEvents OnGridCreated="Grid1Created" />
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
		function FD_NUMERO() { return document.getElementById("RadTextBox1").value; }
		function FD_NUMERO_NOTA_FISCAL() { return document.getElementById("RadTextBox2").value; }
		function FD_COD_FORNECEDOR() { return $find("<%= ComboBox1.ClientID %>").get_value(); }
		function FD_DATA() { return document.getElementById("RadTextBox3").value; }
		function FD_RESUMO() { return document.getElementById("RadTextBox4").value; }
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
						document.getElementById("BtnNovo").disabled = IsAjaxProcessing || !(__PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						document.getElementById("BtnEditar").disabled = IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
						document.getElementById("BtnSalvar").disabled = IsAjaxProcessing || !(__PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						document.getElementById("BtnCancelar").disabled = IsAjaxProcessing || !(__PAGESTATE != "" && __PAGESTATE != "navigation");
						document.getElementById("BtnExcluir").disabled = IsAjaxProcessing || !(__PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						DisableLink(Link1, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link2, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link3, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						DisableLink(Link4, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
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
				$j("#RadTextBox3").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox4").bind("keydown", InitiateEditAuto);
				$j("#ComboBox1").bind("change", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label8").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label8").innerText = ""; }
					try { document.getElementById("Label10").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label10").innerText = ""; }
		}

	</script>
</html>
