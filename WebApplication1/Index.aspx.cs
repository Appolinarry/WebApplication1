using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) {
                return;
                    }
            try
            {
                SqlDataSource1.Insert();
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            catch (SqlException ex) {
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Update();
                GridView1.DataBind();
                Label1.Visible = false;
                TextBox4.Visible = false;
                Button5.Enabled = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch (SqlException ex)
            {
                Error.Text = ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            TextBox4.Visible = true;
            Button5.Enabled = false;
            TextBox4.Text = GridView1.SelectedRow.Cells[0].Text;
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Delete();
                GridView1.DataBind();
                Label1.Visible = false;
                TextBox4.Visible = false;
                Button5.Enabled = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch (SqlException ex)
            {
                Error.Text = ex.Message;
            }
        }
    }
}