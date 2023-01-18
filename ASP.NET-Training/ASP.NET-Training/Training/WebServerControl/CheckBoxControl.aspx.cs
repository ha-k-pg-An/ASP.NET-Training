using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.WebServerControl
{
    public partial class CheckBoxControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //CheckedプロパティでCheckBoxコントロールのチェック状況を取得
            Label1.Text = "チェックボックスはチェックされて"
                + (CheckBox1.Checked ? "います" : "いません");

            Label1.Text += "<br/>";

            //CheckedプロパティでRadioButtonコントロールのチェック状況を取得
            if(RadioButton1.Checked == true)
            {
                Label1.Text += "ラジオボタンはテレビが選択されています";
            }
            if (RadioButton2.Checked == true)
            {
                Label1.Text += "ラジオボタンは新聞が選択されています";
            }
            if (RadioButton3.Checked == true)
            {
                Label1.Text += "ラジオボタンはWebが選択されています";
            }
        }
    }
}