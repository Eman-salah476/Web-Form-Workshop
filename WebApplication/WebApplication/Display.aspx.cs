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
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Technocon"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select v.ID,v.Submission_date,v.Emp_name,d.Name,v.Date_from,v.Date_to from Vacations v ,Department d where v.Dept_id=d.ID", con);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            gv_vacations.DataSource = dr;

            gv_vacations.DataBind();
            gv_vacations.HeaderRow.Cells[1].Text = "#";
            gv_vacations.HeaderRow.Cells[2].Text = "Submission Date";
            gv_vacations.HeaderRow.Cells[3].Text = "Employee Name";
            gv_vacations.HeaderRow.Cells[4].Text = "Department";
            gv_vacations.HeaderRow.Cells[5].Text = "From";
            gv_vacations.HeaderRow.Cells[6].Text = "To";
            
            con.Close();

        }

        protected void gv_vacations_SelectedIndexChanged(object sender, EventArgs e)
        {
                
        }

        protected void gv_vacations_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Technocon"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Vacations where ID=@id", con);
            cmd.Parameters.AddWithValue("id", gv_vacations.SelectedDataKey.Value.ToString());

            con.Open();
            object o = cmd.ExecuteScalar();
            if (o != null)
            {
                Session.Add("id", o);
                Response.Redirect("~/Details.aspx");

            }
            else
            {
                lbl_status.Text = "Error";

            }
            con.Close();


        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }

}