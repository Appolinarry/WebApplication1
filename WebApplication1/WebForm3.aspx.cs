using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            TextBox1.Visible = true;
            Button1.Enabled = false;
            TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[2].Text;
            DropDownList2.SelectedValue = GridView1.SelectedRow.Cells[7].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[6].Text;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            try
            {
                SqlDataSource1.Insert();
                GridView1.DataBind();
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch (SqlException ex)
            {
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            try
            {
                SqlDataSource1.Update();
                GridView1.DataBind();
                Label1.Visible = false;
                TextBox1.Visible = false;
                Button1.Enabled = true;
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch (SqlException ex)
            {
                Error3.Text = ex.Message;
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            try
            {
                SqlDataSource1.Delete();
                GridView1.DataBind();
                Label1.Visible = false;
                TextBox1.Visible = false;
                Button1.Enabled = true;
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

            }
            catch (SqlException ex)
            {
                Error3.Text = ex.Message;
            }
        }
    }
    
}