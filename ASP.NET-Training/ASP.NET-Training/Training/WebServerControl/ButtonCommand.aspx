<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonCommand.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.ButtonCommand" %>

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
                ボタン系コントロールは、Clickイベントを使ってボタンごとのイベントハンドラーを記述する以外に、
                「コマンド」という機能を使い、複数のボタンを1つのイベントハンドラーで記述することができる

                    CommandName:        コマンド名
                    CommandArgument:    コマンド引数
                --%>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="編集" CommandName="Edit" OnCommand="Button1_Command" Width="157px" />
            <br/><br/>
            <asp:Button ID="Button2" runat="server" Text="並び替え（昇順）" CommandName="Sort" CommandArgument="Asc" OnCommand="Button1_Command" />
            <br/><br/>
            <asp:Button ID="Button3" runat="server" Text="並び替え（降順）" CommandName="Sort" CommandArgument="Desc" OnCommand="Button1_Command" />
        </div>
    </form>
</body>
</html>
