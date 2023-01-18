<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControl.aspx.cs" Inherits="ASP.NET_Training.Training.WebServerControl.ListControl" %>

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
                ASP.NETのWebサーバーコントロールでは、様々な種類のリストから値を選択するためのコントロールが提供されている

                    ListBox:        リストから１つないしは複数の項目を選択
                    DropDownList:   リストから１つの項目を選択
                    CheckBoxList:   複数のチェックボックスから任意個の項目をチェック
                    RadioButtonList:複数のラジオボタンから１つを選択

                ※ListBoxコントロールの複数選択は、(Windowsの場合は)「Ctrl」キーを押しながらのクリックで行える


                リストの選択項目はListItemというクラスのオプションで指定する。

                    Enabled:        選択項目の有効/無効の指定
                    Selected:       選択項目が選択されているかどうかを指定
                    Text:           選択項目のテキスト
                    Value:          選択項目の値

                ※ListBoxのSelectionMode（選択モード）。1つだけ選択可能なSingleと、複数選択可能なMultipleがある。デフォルトはSingle
                --%>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br/>
            <br/>
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem Value="meat">肉</asp:ListItem>
                <asp:ListItem Value="fish">魚</asp:ListItem>
                <asp:ListItem Value="vegetable">野菜</asp:ListItem>
                <asp:ListItem Value="rice">米</asp:ListItem>
            </asp:ListBox>
            <br/>
            <br/>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="japanese">和食</asp:ListItem>
                <asp:ListItem Value="french">フランス料理</asp:ListItem>
                <asp:ListItem Value="german">ドイツ料理</asp:ListItem>
            </asp:DropDownList>
            <br/>
            <%--
                CheckBoxListコントロールとRadioButtonListコントロールで使用可能な、選択項目の配置に関するプロパティ
                
                    RepeatLayout:       選択項目の並べ方
                    RepeatDirection:    並べ方の方向。Vertical(垂直)・Horizontal(水平)から選択。デフォルトはVertical
                    RepeatColumns:      並べる際のカラム数


                RepeatLayoutプロパティで選択可能な並べ方
                    
                    Table:          tableタグで選択項目を並べる。デフォルト
                    Flow:           inputタグをそのまま連続して出力する
                    UnordereList:   ulタグ（番号なしリスト）で選択項目を並べる
                    OrderedList:    olタグ（番号付きリスト）で選択項目を並べる
                --%>
            <br/>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="sports">スポーツ</asp:ListItem>
                <asp:ListItem Value="music">音楽</asp:ListItem>
                <asp:ListItem Value="movie">映画</asp:ListItem>
            </asp:CheckBoxList>
            <br/>
            <br/>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="student">学生</asp:ListItem>
                <asp:ListItem Value="bussinessperson">会社員</asp:ListItem>
                <asp:ListItem Value="executive">経営者</asp:ListItem>
            </asp:RadioButtonList>
            <br/>
            <br/>
            <asp:Button ID="Button1" runat="server" Text="送信" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
