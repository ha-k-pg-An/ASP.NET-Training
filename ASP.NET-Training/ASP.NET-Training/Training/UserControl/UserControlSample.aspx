<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserControlSample.aspx.cs" Inherits="ASP.NET_Training.Training.UserControl.UserControlSample" %>
<%@ Register Src="TimeUserControl.ascx" TagName="TimeUserControl" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
            <br/><br/>
            <asp:Label ID="Label1" runat="server" Text="スケジュールの内容と時間を指定してください"></asp:Label>
            <br/><br/>
            <asp:TextBox ID="ScheduleTextBox" runat="server" Columns="40" MaxLength="40"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="スケジュール内容を入力してください" 
                Display="Dynamic" Text="*" ControlToValidate="ScheduleTextBox"></asp:RequiredFieldValidator>
            <br/><br/>
            <uc1:TimeUserControl ID="TimeUserControl1" runat="server"></uc1:TimeUserControl>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" OnClick="Button1_Click" />


        </div>
    </form>
</body>
</html>
