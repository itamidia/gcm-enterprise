﻿<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Listagem_de_Materiais_Cautelados_Permanentes, App_Web_mj1bal1d" culture="auto" uiculture="auto" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Listagem_de_Materiais_Cautelados_Permanentes.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../../JS/Listagem_de_Materiais_Cautelados_Permanentes_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
					<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
					<div runat="server" id ="___DIVtxtPesquisa" style="height:21px">
						<telerik:RadTextBox id="txtPesquisa" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="0"
							onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_txtPesquisa_wrapper" />
					</div>
					<asp:Button id="Button1" runat="server" CommandName="Button1" OnClientClick="Refresh(this);return false;" TabIndex="2" />
					<div runat="server"  style="position:absolute !important;left:20px;top:128px;width:1209px;height:450px;background-color:#FFFFFF;border-color:#DBD6D6;border-style:Solid;border-width:1px;overflow:auto" AutoExpandToContent="False" AutoExpandToContentMargin="0" EquateRepeaterRegionsWidth="True">
						<asp:Repeater id="Repeater1" runat="server" ClientIDMode="Static">
							<HeaderTemplate>
								<div id="GRepeaterHeader1" AutoExpandWidth="True">
									<telerik:RadLabel id="Label2" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label2 %>" />
									<telerik:RadLabel id="Label8" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label8 %>" />
									<telerik:RadLabel id="Label11" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label11 %>" />
									<telerik:RadLabel id="Label20" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label20 %>" />
									<telerik:RadLabel id="Label23" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label23 %>" />
									<telerik:RadLabel id="Label29" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label29 %>" />
									<telerik:RadLabel id="Label35" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label35 %>" />
									<telerik:RadLabel id="Label41" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label41 %>" />
									<telerik:RadLabel id="Label47" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label47 %>" />
									<telerik:RadLabel id="Label53" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label53 %>" />
									<telerik:RadLabel id="Label59" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label59 %>" />
									<telerik:RadLabel id="Label71" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label71 %>" />
								</div>
							</HeaderTemplate>
							<ItemTemplate>
								<div id="GRepeaterBody1" AutoExpandToContent="False" AutoExpandToContentMargin="10" AutoExpandWidth="True" runat="server">
									<div id="GRepeaterBody1ChildLocator" runat="server" clientidmode="AutoID"></div>
									<telerik:RadLabel id="Label3" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label9" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label12" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label21" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label24" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label30" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label36" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label42" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label48" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label54" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label60" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label66" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label72" runat="server" ClientIDMode="Static" />
									<asp:Button id="Button3" runat="server" CommandName="Button3" HasDatalistParent="true" OnClick="___Button3_OnClick"
										OnClientClick="this.disabled = true;" TabIndex="3" />
									<telerik:RadLabel id="Label65" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label65 %>" />
								</div>
							</ItemTemplate>
							<AlternatingItemTemplate>
								<div id="GRepeaterBodyAlt1" AutoExpandToContent="False" AutoExpandToContentMargin="10" AutoExpandWidth="True" runat="server">
									<div id="GRepeaterBodyAlt1ChildLocator" runat="server" clientidmode="AutoID"></div>
									<telerik:RadLabel id="Label4" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label10" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label13" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label22" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label25" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label31" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label37" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label43" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label49" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label55" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label61" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label67" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label73" runat="server" ClientIDMode="Static" />
									<asp:Button id="Button4" runat="server" CommandName="Button4" HasDatalistParent="true" OnClick="___Button4_OnClick"
										OnClientClick="this.disabled = true;" TabIndex="4" />
								</div>
							</AlternatingItemTemplate>
						</asp:Repeater>
					</div>
					<asp:Panel id="Pager1" runat="server" HorizontalAlign="Left">
						<asp:Button id="__Pager1__Button1" runat="server" CommandName="Button1" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button2" runat="server" CommandName="Button2" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button3" runat="server" CommandName="Button3" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button4" runat="server" CommandName="Button4" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button5" runat="server" CommandName="Button5" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button6" runat="server" CommandName="Button6" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button7" runat="server" CommandName="Button7" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button8" runat="server" CommandName="Button8" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
						<asp:Button id="__Pager1__Button9" runat="server" CommandName="Button9" ForeColor="#000000" OnClick="__Pager1__Click"
							style="margin-left:0px;cursor:Inherit;position:relative;top:5px;width:30px;height:20px;background-color:#FFFFFF;border-color:#000000;border-width:1px"/>
					</asp:Panel>
					<asp:Button id="Button7" runat="server" CommandName="Button7" OnClick="___Button7_OnClick" TabIndex="5" Text="<%$ Resources: Button7 %>" />
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
					setTimeout("var $j = jQuery.noConflict();$j('#txtPesquisa').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function PesquisaValor() { return document.getElementById("txtPesquisa").value; }
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
