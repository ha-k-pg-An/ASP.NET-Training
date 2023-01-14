<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBoxControl.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.TextBoxControl" %>

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
                Textコントロールははユーザーがテキスト入力を行うためのコントロール
                1行入力、複数行入力、パスワード入力の3種類の入力モードに対応しており、
                入力モードに応じて出力するHTMLタグが変わるという特徴を持っている

                TextMode:   入力モードの切り替え
                Columns:    表示幅の指定
                MaxLength:  入力可能な最大文字数の指定
                ReadOnly    内容を変更可能かどうかの指定
                Text:       テキストボックスのテキスト
                Rows:       行数の指定（複数行入力モードの場合のみ）
                Wrap:       テキストの右端で折り返して表示するかどうかの指定（複数行入力モードの場合のみ）

                TextModeプロパティを使うことで、1行入力、複数行入力、パスワード入力の3種類の入力モードを切り替えすることができる

                SingleLine:     1行入力
                MultiLine:      複数行入力
                PassWord:       パスワード入力

                --%>

            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br/>
            <br/>
            SingleLine
            <asp:TextBox ID="TextBox1" runat="server" Columns="30" MaxLength="30" OnTextChanged="TextBox1_TextChanged">テキストを入力してください</asp:TextBox>
            <br/>
            <br/>
            MultiLine
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="8"></asp:TextBox>
            <br/>
            <br/>
            Password
            <asp:TextBox ID="TextBox3" runat="server" Columns="8" MaxLength="8" TextMode="Password"></asp:TextBox>
        </div>
        <br/>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
