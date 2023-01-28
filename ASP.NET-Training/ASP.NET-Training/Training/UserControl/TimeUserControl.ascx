<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimeUserControl.ascx.cs" Inherits="ASP.NET_Training.Training.UserControl.TimeUserControl" %>

<asp:TextBox ID="HourTextBox" runat="server" Columns="4" MaxLength="2" ></asp:TextBox>時
<asp:TextBox ID="MinuteTextBox" runat="server" Columns="4" MaxLength="2"></asp:TextBox>分

<asp:RangeValidator ID="RangeValidator1" runat="server" 
    ErrorMessage="時間は0-23の値で入力してください" 
    MaximumValue="23" MinimumValue="0" ControlToValidate="HourTextBox" Text="*" Display="Dynamic" Type="Integer"></asp:RangeValidator>

<asp:RangeValidator ID="RangeValidator2" runat="server" 
    ErrorMessage="分は0-59の値を入力してください" 
    Type="Integer" MaximumValue="59" MinimumValue="0" Text="*" ControlToValidate="MinuteTextBox"></asp:RangeValidator>