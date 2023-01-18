<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxControl.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.CheckBoxControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br/>
            <%-- 
                CheckBoxコントロール、RadioButtonコントロールはチェックボックスとラジオボタンを表示し、入力を受け付けるためのコントロールである

                Text:       表示テキスト
                Checked:    チェックされているかどうか
                GroupName:  ラジオボタンのグループ名。同じグループのラジオボタンは一つしかチェックできない
                --%>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="登録後、メールマガジンを受け取る" />
            <br/>
            <br/>
            どこでこのサイトを知りましたか<br/>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Media" Text="テレビ" /><br/>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Media" Text="新聞" /><br/>
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Media" Text="Web" /><br/>
            <asp:Button ID="Button1" runat="server" Text="登録" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
