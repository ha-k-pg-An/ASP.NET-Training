<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageControl.aspx.cs" Inherits="ASP.NET_Training.Training.ImageControl" %>

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
                ImageUrl:画像のURL
                AlternateText:画像の代替テキスト
                DescriptionUrl:画像を説明するページのURL
                ImageAlign:画像の位置の指定
                --%>
            <asp:Image ID="Image1" runat="server" DescriptionUrl="http://www.wings.msn.to/" ImageUrl="http://www.wings.msn.to/image/wings.jpg" ImageAlign="Middle" AlternateText="画像代替テキスト" />
            <br/>
            <asp:Image ID="Image2" runat="server" ImageAlign="Baseline" DescriptionUrl="http://www.wings.msn.to/" ImageUrl="http://www.wings.msn.to/image/wings.jpg" AlternateText="画像の代替テキスト" />

            </div>
    </form>
</body>
</html>
