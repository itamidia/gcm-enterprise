﻿<%@ page language="C#" autoeventwireup="true" enableeventvalidation="True" inherits="gcmenterprise.DataPages.Processo_pr__definido, App_Web_lgdtmeo2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=gcmenterprise.Utility.CurrentSiteLanguage%>">
<head runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../../Styles/Processo_pr__definido.css?sv=1.127.2017" type="text/css" media="screen" title="no title" charset="utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0;" />
</head>
	<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Mask.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Functions.js"></script>
	<script language="JavaScript" type="text/javascript" src="../../JS/Common.js"></script>
<script type="text/javascript" src="../../JS/Processo_pr__definido_USER.js?sv=1.127.2017" language="JavaScript"></script>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript">
	</script>
		
		<form id="Form1" runat="server">
			<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
			</div>
		</form>
</body>
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
	function Navigate(Url, isWindow)
	{
		try
		{
			if(isWindow)
			{
				Gasopen(Url);
			}
			else
			{
				document.location.href = Url;
			}
		}
		catch(ex)
		{
		}
	}
	try
	{
		if(getParentPage() != self)
		{
			getParentPage().EnableButtons();
		}
	}
	catch (e)
	{
	}
</script>
</html>
