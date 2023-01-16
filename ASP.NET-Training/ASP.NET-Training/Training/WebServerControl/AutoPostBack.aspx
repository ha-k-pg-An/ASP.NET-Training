<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoPostBack.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.AutoPostBack" %>

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
                TextBoxコントロールの「AutoPostBackプロパティ」をtrueにすると、TextBoxコントロール自身でポストバックを行うことができる
                これを「自動ポストバック」と呼ぶ

                AutoPostBackプロパティはTextBoxコントロール以外の入力コントロールでも使用できるが、AutoPostBackプロパティによる自動ポストバックはユーザーを戸惑わせるため、
                必要な場面だけに絞って使用すること
                --%>

            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br/>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </div>
    </form>
</body>
</html>
