<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequiredFieldValidator.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.RequiredFieldValidator" %>

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
                RequiredFieldValidatorコントロールには入力の初期値を指定するInitialValueプロパティがあり、
                入力内容がこの値と同じであれば検証エラとなる
                --%>
            <asp:TextBox ID="TextBox1" runat="server" Text="テキストを入力してください" Columns="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="初期値から値を変更してください" 
                InitialValue="テキストを入力してください" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" />
        </div>
    </form>
</body>
</html>
