using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Training.Training.WebServerControl
{
    public partial class CalendarControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //選択された日付を表示
            Label1.Text = Calendar1.SelectedDate.ToShortDateString() + "が選択されました";
        }
    }
}