<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonCausesValidation.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.ButtonCausesValidation" %>

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
                CausesValidationプロパティ
                
                デフォルト値はTrue。特定のボタンを押したときは検証を行いたくない場合などに、
                CausesValidationプロパティをFalseにすることで、検証なしで処理を進めることができる
                --%>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="テキストを入力してください" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" />
            <br/>
            <asp:Button ID="Button2" runat="server" Text="キャンセル" CausesValidation="False" />

        </div>
    </form>
</body>
</html>
