<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.NET_Training.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="クリックしてください" OnClick="Button1_Click" />

         <%--
            LabelコントロールとLiteralコントロールはどちらもテキストを表示しますが、
            Labelコントロールはspanダグとして出力されるため、フォントや色などのスタイルに関するプロパティがある
            一方、Literalコントロールはタグ付けなしで文字列をそのまま出力されるため、スタイルに関するプロパティがない--%>

        <div>
            <asp:Label ID="Label2" runat="server" Text="Labelコントロールの表示テキスト"></asp:Label>            
            </div>
        <div>
            <asp:Literal ID="Literal1" runat="server" Text="Literalコントロールの表示テキスト"></asp:Literal>
            </div>
    </form>

</body>
</html>
