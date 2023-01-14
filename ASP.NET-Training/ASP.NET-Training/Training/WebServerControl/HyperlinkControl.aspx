<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HyperlinkControl.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.HyperlinkControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--
                NavigateUrl:    リンク先のURL
                ImageUrl:       表示する画像のURL
                Target:         リンク先を表示するウィンドウ
                Text:           表示するテキスト
                --%>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.wings.msn.to">テキストによるリング</asp:HyperLink>
            <br/>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.wings.msn.to" ImageUrl="http://www.wings.msn.to/image/wings.jpg"></asp:HyperLink>
            ←画像によるリンク
            <%--
                Hyperlinkコントロールはクリックしてもポストバックは発生せず、NavigateUrlで指定されたリンクへ直接遷移します。
                リンクでポストバックによる処理が必要な場合は、LinkButtonを使用すること
                -->
        </div>
    </form>
</body>
</html>
