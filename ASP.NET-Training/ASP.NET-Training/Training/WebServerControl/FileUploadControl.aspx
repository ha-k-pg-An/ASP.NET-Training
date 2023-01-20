<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploadControl.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.FileUploadControl" %>

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
                FileUploadコントロールはWebブラウザーからファイルをアップロードするためのコントロールである
                FileUploadコントロールには、共通プロパティ以外はデザイン時に使用可能なプロパティはない
                また、HTMLのファイルアップロード機能の制限により、予めアップロードするファイルの初期値を指定することもできない
                また、FileUploadコントロールは自動ポストバックに対応していないため、ボタン系コントロールなど、ポストバックを行うコントロールを別途で配置する必要がある

                ファイルのアップロードの際のファイルサイズ上限は、Webアプリケーションの構成ファイルであるWeb.configファイルで設定できる
                デフォルトは4MBが上限となっている
                --%>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br/>
            <br/>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br/>
            <br/>
            <asp:Button ID="Button1" runat="server" Text="アップロード" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
