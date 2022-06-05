<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.PROC_DISC_PREL_ARQUIVOS___CONSULTA, App_Web_imjh5exu" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GMultiMedia.ascx" TagName="GMultiMedia" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/PROC_DISC_PREL_ARQUIVOS___CONSULTA.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../../JS/PROC_DISC_PREL_ARQUIVOS___CONSULTA_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
					<div runat="server"  style="position:absolute !important;left:20px;top:128px;width:667px;height:300px;background-color:#FFFFFF;border-color:#DBD6D6;border-style:Solid;border-width:1px;overflow:auto" AutoExpandToContent="False" AutoExpandToContentMargin="0" EquateRepeaterRegionsWidth="True">
						<asp:Repeater id="Repeater1" runat="server" ClientIDMode="Static">
							<HeaderTemplate>
								<div id="GRepeaterHeader1" AutoExpandWidth="True">
									<telerik:RadLabel id="Label2" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label2 %>" />
									<telerik:RadLabel id="Label5" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label5 %>" />
									<telerik:RadLabel id="Label8" runat="server" ClientIDMode="Static" Text="<%$ Resources: Label8 %>" />
								</div>
							</HeaderTemplate>
							<ItemTemplate>
								<div id="GRepeaterBody1" AutoExpandToContent="False" AutoExpandToContentMargin="10" AutoExpandWidth="True" runat="server">
									<div id="GRepeaterBody1ChildLocator" runat="server" clientidmode="AutoID"></div>
									<telerik:RadLabel id="Label3" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label6" runat="server" ClientIDMode="Static" />
									<asp:Button id="Button3" runat="server" CommandName="Button3" HasDatalistParent="true" OnClick="___Button3_OnClick"
										OnClientClick="this.disabled = true;" TabIndex="3" />
									<asp:Button id="Button5" runat="server" CommandName="Button5" HasDatalistParent="true" OnClientClick="Remove(this,true);return false;"
										TabIndex="5" />
									<gas:GMultiMedia id="GMultiMedia1" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="false" enabled="true"
										EncryptedFile="False" Height="25px" Left="242px" MaxFileSize="0" Path="~/Pages/FILE/" SaveAsFile="True" SessionHandlerObjectName="URL24083"
										ShowDownloadLink="False" ShowImage="False" TabIndex="7" Top="0px" Visible="true" Width="328px" />
								</div>
							</ItemTemplate>
							<AlternatingItemTemplate>
								<div id="GRepeaterBodyAlt1" AutoExpandToContent="False" AutoExpandToContentMargin="10" AutoExpandWidth="True" runat="server">
									<div id="GRepeaterBodyAlt1ChildLocator" runat="server" clientidmode="AutoID"></div>
									<telerik:RadLabel id="Label4" runat="server" ClientIDMode="Static" />
									<telerik:RadLabel id="Label7" runat="server" ClientIDMode="Static" />
									<asp:Button id="Button4" runat="server" CommandName="Button4" HasDatalistParent="true" OnClick="___Button4_OnClick"
										OnClientClick="this.disabled = true;" TabIndex="4" />
									<asp:Button id="Button6" runat="server" CommandName="Button6" HasDatalistParent="true" OnClientClick="Remove(this,true);return false;"
										TabIndex="6" />
									<gas:GMultiMedia id="GMultiMedia2" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="false" enabled="true"
										EncryptedFile="False" Height="25px" Left="242px" MaxFileSize="0" Path="~/Pages/FILE/" SaveAsFile="True" SessionHandlerObjectName="URL24083"
										ShowDownloadLink="False" ShowImage="False" TabIndex="8" Top="-1px" Visible="true" Width="328px" />
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
					<asp:Button id="Button7" runat="server" CommandName="Button7" OnClick="___Button7_OnClick" TabIndex="9" Text="<%$ Resources: Button7 %>" />
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
					setTimeout("var $j = jQuery.noConflict();$j('#txtPesquisa').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function PesquisaValor() { return document.getElementById("txtPesquisa").value; }
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
						document.getElementById("Button1").disabled = IsAjaxProcessing || !(__PAGESTATE == "navigation");
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
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
