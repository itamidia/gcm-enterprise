<%@ page language="C#" autoeventwireup="true" inherits="gcmenterprise.Reports.Relat_rio_Talao, App_Web_2htywqnl" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=B03F5F7F11D50A3A" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Relatório Talao</title>
</head>
<script language="JavaScript" type="text/javascript" src="../../../JS/Common.js"></script>
<script language="JavaScript" type="text/javascript" src="../../../JS/jquery.js"></script>
<body style="margin:0px;padding:0px;overflow:auto">
	<form id="form1" runat="server">
		<div runat="server" id="__MainDiv" style="overflow: hidden; background-color:White"   >
			<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt"  SizeToReportContent="true">
            		<LocalReport ReportPath="Pages/RELATORIOS/graficos/Relat_rio_Talao.rdlc" />
			</rsweb:ReportViewer>
		</div>
		<asp:Label ID="ReportError" runat="server" Visible="false" Text="Label"></asp:Label>
	</form>
	<script type="text/javascript">
	
		ResizeReport();

		function GetRadWindow() {
			var oWindow = null;
			if (window.radWindow) oWindow = window.radWindow;
			else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
			return oWindow;
		}

		function AjustSize()
		{
			var radWindow = GetRadWindow();
			if (radWindow != null) {
				var viewerElement = document.getElementById("<%= ReportViewer1.ClientID %>_fixedTable");
				radWindow.autoSize();
				radWindow.setSize(viewerElement.clientWidth + 7, radWindow.get_height());
				radWindow.Center();
			}
			else
			{
				resizeIframe();
			}
		}

		function ResizeReport() {
			try {
				var radWindow = GetRadWindow();
				var viewer = $find("<%= ReportViewer1.ClientID %>");
				 
				if (viewer != null && viewer.get_isLoading() == false) {
					setTimeout(AjustSize, 1000);
				}
				else {
					setTimeout(ResizeReport, 1000);
				}
			}
			catch (e) {
			}
		}
	</script>
</body>
</html>
