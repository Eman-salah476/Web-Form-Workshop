using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace WebApplication
{
    public partial class Request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_submDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Technocon"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Department", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    ddl_Department.Items.Add(new ListItem(dr["Name"].ToString(), dr["ID"].ToString()));
                }
                con.Close();
            }

           

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            if (txt_dateFrom.Text != "" && txt_dateTo.Text != "")
            {
                DateTime dateTo = Convert.ToDateTime(txt_dateTo.Text);
                DateTime returnDate = Convert.ToDateTime(txt_return.Text);

                if (returnDate < dateTo)
                {
                    lbl_returnStatus.Text = "The date Can’t be less than Vacation Date To";
                    txt_return.Text = "";
                }
                else
                {
                    lbl_returnStatus.Text = "";
                   
                }

            }
            else
            {
                lbl_dateFromstatus.Text = "Enter The Date To and Date From firt";
            }

        }

        protected void txt_dateFrom_TextChanged(object sender, EventArgs e)
        {
           
                DateTime dateFrom = Convert.ToDateTime(txt_dateFrom.Text);
                if (dateFrom < DateTime.Now.Date)
                {
                    lbl_dateFromstatus.Text = "The date Can’t be less than today’s date";
                txt_dateFrom.Text = "";
                }
                else
                {
                    lbl_dateFromstatus.Text = "";
                }
            
        }

        protected void txt_dateTo_TextChanged(object sender, EventArgs e)
        {
            if (txt_dateFrom.Text != "")
            {
                DateTime dateTo = Convert.ToDateTime(txt_dateTo.Text);
                DateTime dateFrom = Convert.ToDateTime(txt_dateFrom.Text);

                if (dateTo <= dateFrom)
                {
                    lbl_dateTostatus.Text = "The date Can’t be less than or equal Vacation Date From";
                    txt_dateTo.Text = "";
                }
                else
                {
                    lbl_dateTostatus.Text = "";
                }

                txt_noDays.Text = (dateTo - dateFrom).TotalDays.ToString();


            }
            else
            {
                lbl_dateFromstatus.Text = "Enter The date from firt";
            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Technocon"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Insert into Vacations (Submission_date,Emp_name,Dept_id,Title,Date_from,Date_to,Returning_date,No_days,Notes) values(@Sdate,@empName,@deptId,@title,@dateFrom,@dateTo,@Rdate,@days,@notes)", con);
            cmd.Parameters.AddWithValue("Sdate",txt_submDate.Text);
            cmd.Parameters.AddWithValue("empName",txt_empName.Text);
            cmd.Parameters.AddWithValue("deptId",ddl_Department.SelectedValue);
            cmd.Parameters.AddWithValue("title",txt_title.Text);
            cmd.Parameters.AddWithValue("dateFrom",txt_dateFrom.Text);
            cmd.Parameters.AddWithValue("dateTo",txt_dateTo.Text);
            cmd.Parameters.AddWithValue("Rdate",txt_return.Text);
            cmd.Parameters.AddWithValue("notes",txt_notes.Text);
            cmd.Parameters.AddWithValue("days", txt_noDays.Text);


            con.Open();
            int status = cmd.ExecuteNonQuery();

            if (status > 0)
            {
                txt_dateFrom.Text = txt_dateTo.Text = txt_empName.Text = txt_noDays.Text = txt_notes.Text = txt_return.Text = txt_title.Text = "";
                lbl_status.Text = "Successfully Saved";
            }
            else
            {
                lbl_status.Text = "Error";
                lbl_status.ForeColor = Color.Red;
            }
            con.Close();
        }
    }
}