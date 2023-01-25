<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExpressionValidatorControl.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.RegularExpressionValidatorControl" %>

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
                RegularExpressionValidatorコントロールは、正規表現による検証を行うためのコントロールである
                正規表現とは、文字列が満たすべきパターンを表現するための記法のことである
                正規表現を用いることで、入力内容が電話番号やメールアドレスなどの特定の書式を満たしているかどうかを検証できる

                    ^[A-Za-z0-9]+$          英数文字のみのパターン
                    \d{3}                   3桁の数字
                    \d{3}(-(\d{4}|\d{2}))?  日本の郵便番号のパターン。3桁、5桁、7桁の表記に対応
                --%>

            郵便番号<asp:TextBox ID="TextBox1" runat="server" Columns="50"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="郵便番号を正しく入力してください" ControlToValidate="TextBox1" 
                ValidationExpression="\d{3}(-(\d{4}|\d{2}))?"></asp:RegularExpressionValidator>

            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" />
        </div>
    </form>
</body>
</html>
