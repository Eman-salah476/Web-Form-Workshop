using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_vacationReq_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Request.aspx");
        }

        protected void btn_display_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Display.aspx");
        }
    }
}