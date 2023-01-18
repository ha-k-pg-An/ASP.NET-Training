<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBoxHtml5Input.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.TextBoxHtml5Input" %>

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
                HTML5では、inputタグのtype属性に幾つかの新しい値が追加され、日付入力、メールアドレス入力、、電話番号などのサポートされるようになった

                Color:          色
                Date:           日付
                DateTime:       UTC(協定世界時)による日時
                DateTimeLocal:  UTCによらないローカル日時
                Email:          メールアドレス
                Month:          月
                Number:         数値
                Phone:          電話番号
                Range:          数値範囲
                Search:         検査文字列
                Time:           時間
                Url:            URL
                Week:           週
                --%>
            Color:
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Color"></asp:TextBox>
            <br/>
            Date:
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            <br/>
            DateTime:
            <asp:TextBox ID="TextBox3" runat="server" TextMode="DateTime"></asp:TextBox>
            <br/>
            DateTimeLocal:
            <asp:TextBox ID="TextBox4" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            <br/>
            Email:
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
            <br/>
            Month:
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Month"></asp:TextBox>
            <br/>
            Number:
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
            <br/>
            Phone:
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Phone"></asp:TextBox>
            <br/>
            Range:
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Range"></asp:TextBox>
            <br/>
            Search:
            <asp:TextBox ID="TextBox10" runat="server" TextMode="Search"></asp:TextBox>
            <br/>
            Time:
            <asp:TextBox ID="TextBox11" runat="server" TextMode="Time"></asp:TextBox>
            <br/>
            Url:
            <asp:TextBox ID="TextBox12" runat="server" TextMode="Url"></asp:TextBox>
            <br/>
            Week:
            <asp:TextBox ID="TextBox13" runat="server" TextMode="Week"></asp:TextBox>
            <br/>
        </div>
    </form>
</body>
</html>

