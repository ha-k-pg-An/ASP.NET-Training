<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonValidationGroup.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.ButtonValidationGroup" %>

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
                ValidationGroupプロパティ
                
                このプロパティを使うことで、ページ内の検証コントロールすべてが一斉に検証を行うのではなく
                ボタンごとに検証を行うグループを切り替えることができる
                --%>

            登録するアドレス<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="登録するアドレスを入力してください" 
                ValidationGroup="Register" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="登録" ValidationGroup="Register" />
            <br/><br/>
            登録解除するアドレス<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="登録解除するアドレスを入力してください" 
                ValidationGroup="Unregister" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            <br/><br/>
            <asp:Button ID="Button2" runat="server" Text="登録解除" ValidationGroup="Unregister" />
        </div>
    </form>
</body>
</html>
