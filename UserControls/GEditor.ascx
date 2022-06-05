<%@ control language="C#" autoeventwireup="true" inherits="COMPONENTS.GEditor, App_Web_z3xx2vhh" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<style>
    .Editor
    {
        min-height:100% !important;
        min-width:100% !important;
    }
	.reLayoutWrapper 
	{
		height:100% !important;
	}
</style>
<script type="text/javascript">
    function OnClientLoad_<%= ClientID %>(editor, args) {
        editor.setSize(editor._element.parentElement.clientWidth + "px", editor._element.parentElement.clientHeight + "px");  
    }
	function HideToolbar()
	{
		var $j = jQuery.noConflict();
		$j('#<%= ClientID %>_EditorTop').parent().hide();		
	}
</script>

<asp:Panel runat="server" ClientIDMode="Static" ID="ContentEditor">
    <telerik:RadEditor ID="Editor" runat="server" EnableResize="false" CssClass="Editor">
        <Tools>
            <telerik:EditorToolGroup Tag="FindAndReplace">
                <telerik:EditorTool Name="FindAndReplace" ShortCut="CTRL+F" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="Print">
                <telerik:EditorTool Name="Print" ShortCut="CTRL+P" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="CopyPaste">
                <telerik:EditorTool Name="Cut" ShortCut="CTRL+X" />
                <telerik:EditorTool Name="Copy" ShortCut="CTRL+C" />
                <telerik:EditorTool Name="Paste" ShortCut="CTRL+V" />
                <telerik:EditorTool Name="PasteFromWord" />
                <telerik:EditorTool Name="PasteHtml" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="UndoRedo">
                <telerik:EditorTool Name="Undo" ShortCut="CTRL+Z" />
                <telerik:EditorTool Name="Redo" ShortCut="CTRL+Y" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="Time">
                <telerik:EditorTool Name="InsertTime" />
                <telerik:EditorTool Name="InsertDate" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="Link">
                <telerik:EditorTool Name="InsertLink" />
                <telerik:EditorTool Name="Unlink" ShortCut="CTRL+SHIFT+K" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="Paragraph">
                <telerik:EditorTool Name="InsertParagraph" />
                <telerik:EditorTool Name="Indent" />
                <telerik:EditorTool Name="Outdent" />
                <telerik:EditorTool Name="InsertUnorderedList" />
                <telerik:EditorTool Name="InsertOrderedList" />
                <telerik:EditorTool Name="InsertHorizontalRule" />
            </telerik:EditorToolGroup>
                    <telerik:EditorToolGroup Tag="Align">
                <telerik:EditorTool Name="JustifyLeft" />
                <telerik:EditorTool Name="JustifyCenter" />
                <telerik:EditorTool Name="JustifyRight" />
                <telerik:EditorTool Name="JustifyFull" />
                <telerik:EditorTool Name="JustifyNone" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="FontSize">
                <telerik:EditorTool Name="FontName" />
                <telerik:EditorTool Name="RealFontSize" />
                <telerik:EditorTool Name="FormatBlock" />
            </telerik:EditorToolGroup>
            <telerik:EditorToolGroup Tag="Font">
                <telerik:EditorTool Name="ConvertToUpper" />
                <telerik:EditorTool Name="ConvertToLower" />
                <telerik:EditorTool Name="Bold" ShortCut="CTRL+B" />
                <telerik:EditorTool Name="Italic" ShortCut="CTRL+I" />
                <telerik:EditorTool Name="Underline" ShortCut="CTRL+U" />
                <telerik:EditorTool Name="StrikeThrough" />
                <telerik:EditorTool Name="Superscript" />
                <telerik:EditorTool Name="Subscript" />
                <telerik:EditorSeparator />
                <telerik:EditorTool Name="ForeColor" />
                <telerik:EditorTool Name="BackColor" />
            </telerik:EditorToolGroup>              
            <telerik:EditorToolGroup Tag="ViewMode">
                <telerik:EditorTool Name="ToggleScreenMode" ShortCut="F11" />
                <telerik:EditorTool Name="Zoom" />
            </telerik:EditorToolGroup>
        </Tools>
    </telerik:RadEditor>
</asp:Panel>
