<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultipleFileUpload.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.MultipleFileUpload" %>

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
                AllowMultiple: 複数ファイルアップロードを受け付けるかどうか                
                --%>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/><br/>
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="アップロード" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
