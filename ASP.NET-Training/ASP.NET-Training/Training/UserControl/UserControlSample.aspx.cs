﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.UserControl
{
    public partial class UserControlSample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ユーザーコントロールのプロパティをWebフォームから取得
            Label1.Text =
                String.Format("{0}時{1}分に、{2}という内容のスケジュールを登録します",
                TimeUserControl1.Hour,
                TimeUserControl1.Minute,
                ScheduleTextBox.Text);
        }
    }
}