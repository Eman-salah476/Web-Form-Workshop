using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Technocon"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select v.*,d.Name from Vacations v,department d where v.Dept_id=d.ID and v.ID=@id", con);
            cmd.Parameters.AddWithValue("id", Session["id"]);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lbl_dateFrom.Text = dr["Date_from"].ToString();
            lbl_dateTo.Text = dr["Date_to"].ToString();
            lbl_days.Text = dr["No_days"].ToString();
            lbl_dept.Text = dr["Name"].ToString();
            lbl_empName.Text = dr["Emp_name"].ToString();
            lbl_notes.Text = dr["Notes"].ToString();
            lbl_return.Text = dr["Returning_date"].ToString();
            lbl_Sdate.Text = dr["Submission_date"].ToString();
            lbl_title.Text = dr["Title"].ToString();
            
            con.Close();


        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Display.aspx");
        }
    }
}