<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="gcmenterprise.DataPages.Apreensoes, App_Web_bisnh1gg" culture="auto" uiculture="auto" %>
<%@ Register Src="..\..\UserControls\GEditor.ascx" TagName="GEditor" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Apreensoes.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient(); setTimeout(function() {Form1_onload_1(this);return false;}, 100);" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Page.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js?sv=1.127.2017"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js?sv=1.127.2017"></script>
	<script type="text/javascript" src="../../JS/Apreensoes_USER.js?sv=1.127.2017" language="JavaScript"></script>
	
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
					<div id="Div2" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
					</div>
					<div id="Div3" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:LinkButton id="Link6" runat="server" Font-Underline="true" OnClientClick="First(this);return false;" Text="<%$ Resources: Link6 %>" />
						<telerik:RadLabel id="Label14" runat="server" Text="<%$ Resources: Label14 %>" />
						<asp:LinkButton id="Link7" runat="server" Font-Underline="true" OnClientClick="Previous(this);return false;" Text="<%$ Resources: Link7 %>" />
						<telerik:RadLabel id="Label15" runat="server" Text="<%$ Resources: Label15 %>" />
						<telerik:RadLabel id="Label16" runat="server" />
						<telerik:RadLabel id="Label17" runat="server" Text="<%$ Resources: Label17 %>" />
						<telerik:RadLabel id="Label18" runat="server" />
						<asp:LinkButton id="Link8" runat="server" Font-Underline="true" OnClientClick="Next(this);return false;" Text="<%$ Resources: Link8 %>" />
						<telerik:RadLabel id="Label19" runat="server" Text="<%$ Resources: Label19 %>" />
						<asp:LinkButton id="Link9" runat="server" Font-Underline="true" OnClientClick="Last(this);return false;" Text="<%$ Resources: Link9 %>" />
						<asp:Label id="labError" runat="server" class="Error" />
					</div>
					<telerik:RadToolBar id="gToolbar" runat="server" EnableRoundedCorners="True" EnableShadows="True" Height="29"
						OnClientButtonClicking="ToolbarClickHandler" Orientation="Horizontal" RenderMode="Classic" Width="268">
						<Items>
							<telerik:RadToolBarButton id="Button1" runat="server" CssClass="Button1" CommandArgument="Button1" CommandName="Button1" TabIndex="16"
								ToolTip="Cria novo registro" />
							<telerik:RadToolBarButton id="Button2" runat="server" CssClass="Button2" CommandArgument="Button2" CommandName="Button2" TabIndex="17"
								ToolTip="Grava alterações do registro atual" />
							<telerik:RadToolBarButton id="Button3" runat="server" CssClass="Button3" CommandArgument="Button3" CommandName="Button3" TabIndex="18"
								ToolTip="Cancela modificações no registro atual" />
							<telerik:RadToolBarButton id="Button4" runat="server" CssClass="Button4" CommandArgument="Button4" CommandName="Button4" TabIndex="19"
								ToolTip="Excluir registro atual" />
							<telerik:RadToolBarButton id="Button6" runat="server" CssClass="Button6" CommandArgument="Button6" CommandName="Button6" TabIndex="20"
								ToolTip="Mover para o registro anterior" />
							<telerik:RadToolBarButton id="Button7" runat="server" CssClass="Button7" CommandArgument="Button7" CommandName="Button7" TabIndex="21"
								ToolTip="Mover para o próximo registro" />
							<telerik:RadToolBarButton id="Button9" runat="server" CssClass="Button9" CommandArgument="Button9" CommandName="Button9" TabIndex="22"
								ToolTip="Especifica expressão de filtragem" />
							<telerik:RadToolBarButton id="Button10" runat="server" CssClass="Button10" CommandArgument="Button10" CommandName="Button10" TabIndex="23"
								ToolTip="Inicia edição no registro atual" />
						</Items>
					</telerik:RadToolBar>
					<div style="position:absolute !important;left:30px;top:61px;width:874px;height:546px">
						<telerik:RadTabStrip id="TabControl1" runat="server" Align="Left" AutoPostBack="False" MultiPageID="TabControl1MultiPage"
							PerTabScrolling="False" RenderMode="Classic" ScrollButtonsPosition="Middle" ScrollChildren="True">
							<Tabs>
								<telerik:RadTab id="TabItem1" runat="server" Selected="true" Text="<%$ Resources: TabPage1 %>">
								</telerik:RadTab>
								<telerik:RadTab id="TabItem2" runat="server" Text="<%$ Resources: TabPage2 %>">
								</telerik:RadTab>
							</Tabs>
						</telerik:RadTabStrip>
						<telerik:RadMultiPage runat="server" ID="TabControl1MultiPage" BorderColor="#000000" BorderWidth="1" BorderStyle="Solid" Width="100%" Height="520px" SelectedIndex="0">
							<telerik:RadPageView id="TabPage1" runat="server" BackColor="#FFFFFF">
								<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" enabled="false" EnableSingleInputRendering="True"
									ForeColor="#FF0000" MaxLength="10" onkeydown="onTextChanged" ReadOnly="True" RenderMode="Classic" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox1_wrapper" />
								<telerik:RadLabel id="Label20" runat="server" Text="<%$ Resources: Label20 %>" />
								<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="2" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
								<telerik:RadLabel id="Label21" runat="server" Text="<%$ Resources: Label21 %>" />
								<telerik:RadTextBox id="RadTextBox3" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="50"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="3" TextMode="SingleLine" WrapperCssClass="c_RadTextBox3_wrapper" />
								<telerik:RadLabel id="Label22" runat="server" Text="<%$ Resources: Label22 %>" />
								<telerik:RadTextBox id="RadTextBox4" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="4" TextMode="SingleLine" WrapperCssClass="c_RadTextBox4_wrapper" />
								<telerik:RadLabel id="Label23" runat="server" Text="<%$ Resources: Label23 %>" />
								<telerik:RadTextBox id="RadTextBox5" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="5" TextMode="SingleLine" WrapperCssClass="c_RadTextBox5_wrapper" />
								<telerik:RadLabel id="Label24" runat="server" Text="<%$ Resources: Label24 %>" />
								<telerik:RadTextBox id="RadTextBox6" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="6" TextMode="SingleLine" WrapperCssClass="c_RadTextBox6_wrapper" />
								<telerik:RadLabel id="Label25" runat="server" Text="<%$ Resources: Label25 %>" />
								<telerik:RadTextBox id="RadTextBox7" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="20"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="7" TextMode="SingleLine" WrapperCssClass="c_RadTextBox7_wrapper" />
								<telerik:RadLabel id="Label26" runat="server" Text="<%$ Resources: Label26 %>" />
								<telerik:RadTextBox id="RadTextBox8" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="8" TextMode="SingleLine" WrapperCssClass="c_RadTextBox8_wrapper" />
								<telerik:RadLabel id="Label27" runat="server" Text="<%$ Resources: Label27 %>" />
								<telerik:RadTextBox id="RadTextBox9" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="9" TextMode="SingleLine" WrapperCssClass="c_RadTextBox9_wrapper" />
								<telerik:RadLabel id="Label28" runat="server" Text="<%$ Resources: Label28 %>" />
								<telerik:RadTextBox id="RadTextBox10" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="10" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox10_wrapper" />
								<telerik:RadLabel id="Label29" runat="server" Text="<%$ Resources: Label29 %>" />
								<telerik:RadLabel id="Label30" runat="server" Text="<%$ Resources: Label30 %>" />
								<telerik:RadTextBox id="RadTextBox12" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="7"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="12" TextMode="SingleLine" WrapperCssClass="c_RadTextBox12_wrapper"
									/>
								<telerik:RadLabel id="Label31" runat="server" Text="<%$ Resources: Label31 %>" />
								<telerik:RadTextBox id="RadTextBox13" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="30" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="13" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox13_wrapper" />
								<telerik:RadLabel id="Label32" runat="server" Text="<%$ Resources: Label32 %>" />
								<telerik:RadTextBox id="RadTextBox15" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000"
									MaxLength="15" onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="14" TextMode="SingleLine"
									WrapperCssClass="c_RadTextBox15_wrapper" />
								<telerik:RadLabel id="Label34" runat="server" Text="<%$ Resources: Label34 %>" />
								<telerik:RadDateTimePicker id="DatePicker1" runat="server" ClientEvents-OnDateSelected="setDatePickerFocus" DateInput-DateFormat="dd/MM/yyyy"
									DatePickerType="DateTime" DatePopupButton-ToolTip="Select date" EnableEmbeddedSkins="True" HideAnimation-Duration="300"
									HideAnimation-Type="Fade" MinDate="01/01/1900" PopupDirection="BottomRight" ReadOnly="False" RenderMode="Classic"
									ShowAnimation-Duration="300" ShowAnimation-Type="Fade" TabIndex="15" TimeView-EndTime="23:00" TimeView-StartTime="00:00" Width="205px">
								</telerik:RadDateTimePicker>
								<telerik:RadLabel id="Label35" runat="server" Text="<%$ Resources: Label35 %>" />
								<telerik:RadTextBox id="RadTextBox16" runat="server" AutoPostBack="False" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="7"
									onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="11" TextMode="SingleLine" WrapperCssClass="c_RadTextBox16_wrapper"
									/>
							</telerik:RadPageView>
							<telerik:RadPageView id="TabPage2" runat="server" BackColor="#FFFFFF">
								<gas:GEditor id="GEditor1" runat="server" EnableEmbeddedSkins="True" TabIndex="24" ViewMode="Design" />
							</telerik:RadPageView>
						</telerik:RadMultiPage>
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
					setTimeout("var $j = jQuery.noConflict();$j('#RadTextBox1').first().focus();", 200);
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
		function ID_APREENSOES() { return document.getElementById("RadTextBox1").value; }
		function BOL_ID() { return document.getElementById("RadTextBox2").value; }
		function APREE_OBJETO() { return document.getElementById("RadTextBox3").value; }
		function APREE_QTDE() { return document.getElementById("RadTextBox4").value; }
		function APREE_MARCA() { return document.getElementById("RadTextBox5").value; }
		function APREE_MODELO() { return document.getElementById("RadTextBox6").value; }
		function APREE_NUM_FABRICACAO() { return document.getElementById("RadTextBox7").value; }
		function APREE_DESTINO() { return document.getElementById("RadTextBox8").value; }
		function APREE_RECEBEDOR() { return document.getElementById("RadTextBox9").value; }
		function APREE_LEI() { return document.getElementById("RadTextBox10").value; }
		function APREE_NUM_INFRACAO() { return document.getElementById("RadTextBox12").value; }
		function APREE_PROPRIETARIO() { return document.getElementById("RadTextBox13").value; }
		function APREE_REF_PLACA_COD() { return document.getElementById("RadTextBox15").value; }
		function APREE_DATA() { return document.getElementById("DatePicker1").value; }
		function APRRE_NUM_AUTO() { return document.getElementById("RadTextBox16").value; }
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
						DisableLink(Link6, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link7, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false"));
						DisableLink(Link8, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						DisableLink(Link9, IsAjaxProcessing || !(__PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false"));
						EnableDisableToolbarButtons(gToolbar.id,"Button1",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ALLOWINSERT == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button2",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation" && (__ALLOWINSERT == "true" || __ALLOWUPDATE == "true"));
						EnableDisableToolbarButtons(gToolbar.id,"Button3",!IsAjaxProcessing && __PAGESTATE != "" && __PAGESTATE != "navigation");
						EnableDisableToolbarButtons(gToolbar.id,"Button4",!IsAjaxProcessing && __PAGECOUNT > 0 && __ALLOWREMOVE == "true" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button6",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER > 1 && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button7",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGECOUNT > 0 && __PAGENUMBER < __PAGECOUNT && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button9",!IsAjaxProcessing && __PAGESTATE == "navigation" && __ISPARAMETER == "false");
						EnableDisableToolbarButtons(gToolbar.id,"Button10",!IsAjaxProcessing && __PAGESTATE == "navigation" && __PAGENUMBER > 0 && __PAGECOUNT > 0 && __ALLOWUPDATE == "true");
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
				$j("#RadTextBox5").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox6").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox7").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox8").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox9").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox10").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox12").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox13").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox15").bind("keydown", InitiateEditAuto);
				$j("#RadTextBox16").bind("keydown", InitiateEditAuto);
				$j("#DatePicker1").bind("change", InitiateEditAuto);
				$j("#DatePicker1_dateInput").bind("keydown", InitiateEditAuto);
		}
		function ShowClientFormulas(ShowServerFormulas)
		{
					try { document.getElementById("Label16").innerText = (PageProvider.MainProvider.DataProvider.PageNumber).toString(); }
					catch(e) { document.getElementById("Label16").innerText = ""; }
					try { document.getElementById("Label18").innerText = (PageProvider.MainProvider.DataProvider.PageCount).toString(); }
					catch(e) { document.getElementById("Label18").innerText = ""; }
		}

	</script>
</html>
