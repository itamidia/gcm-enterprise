<%@ page language="C#" autoeventwireup="true" inherits="gcmenterprise.Reports.Visitas_Vitima_Detalhe, App_Web_mot5z2nf" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register TagPrefix="telerikreport" Assembly="Telerik.ReportViewer.WebForms" Namespace="Telerik.ReportViewer.WebForms" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Visitas por Vitima Detalhe - Telerik</title>
</head>
<script language="JavaScript" type="text/javascript" src="../../JS/Common.js"></script>
<script language="JavaScript" type="text/javascript" src="../../JS/jquery.js"></script>
<body style="margin:0px;padding:0px;overflow:auto">
	<form id="form1" runat="server">
		<div runat="server" id="__MainDiv" style="overflow: hidden; background-color:White"   >
			<telerikreport:ReportViewer ID="TelerikReportViewer1" runat="server"  style="border:1px solid #ccc;width:99%; height:97%" SizeToReportContent="true"/>
		</div>
		<asp:Label ID="ReportError" runat="server" Visible="false" Text="Label"></asp:Label>
	</form>
	<script type="text/javascript">
		resizeIframe();
	</script>
</body>
</html>
