<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonControl.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.ButtonControl" %>

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
                Button:         ポストバック
                LinkButton:     クライアントサイドのJavaScriptでポストバック
                ImageButton:    ポストバック

                ※LinkButtonコントロールはJavaScriptが無効な環境で作動しない

                Buttonコントロール、LinkButtonコントロールは、ボタン、リンクそれぞれのキャプションとなる文字列をTextプロパティで指定する
                ImageButtonコントロールはImageコントロールを継承しており、Imageコントロールと同じ方法で画像を表示する
                --%>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br/><br/>
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            <br/><br/>
            <asp:ImageButton ID="ImageButton1" runat="server"
                ImageUrl="http://www.wings.msn.to/image/wings.jpg" 
                ImageAlign="Middle" />←ImageButton

        </div>
    </form>
</body>
</html>
