<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationSummaryControl.aspx.cs" Inherits="ASP.NET_Training.Training.ValidationControl.ValidationSummaryControl" %>

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
                ValidationSummaryコントロールはそれ自体が検証機能を持たず
                各検証コントロールのErrorMessageをまとめて出力するためのコントロールである

                    ShowMessageBox:         エラーメッセージををJavaScriptのalert関数を使ってダイアログ表示する
                    ShowSummary:            エラーメッセージをWebページ上に表示する
                    DisplayMode:            表示方法を指定する
                    HeaderText:             エラーメッセージの上に表示するテキストを指定する

                DisplayModeプロパティの値と意味

                    List:               エラーメッセージごとに改行して表示
                    BulletList:         ulタグで表示。デフォルト値
                    SingleParagraph:    改行せず続けて表示
                --%>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
            <br/><br/>
            年齢<asp:TextBox ID="Age" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="年齢は0-150歳の範囲で入力してください" 
                ControlToValidate="Age" MaximumValue="150" MinimumValue="0" Text="*" Type="Integer"></asp:RangeValidator>
            <br/><br/>
            生年月日<asp:TextBox ID="Birthday" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="誕生日は1850年以降で入力してください" 
                ControlToValidate="Birthday" MaximumValue="9999/1/1" MinimumValue="1850/1/1" Type="Date"></asp:RangeValidator>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" Text="送信" />
        </div>
    </form>
</body>
</html>
