using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Info_Manager
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
                        void LoadRecord()
                        {
                            sqlcommand comm = new sqlcommand("select * from Student_Info_Table", con);
                            SqlDataAdapter d = new SqlDataAdapter(comm);
                            DataTable dt = new DataTable();
                            d.fill(dt);
                            Gridview1.DataSource = dt;
                            Gridview1.DataBind();
                        }
            */
        }

    SqlConnection con = new SqlConnection(" Data Source=LAPTOP-I97SB86B;Initial Catalog=DataBase_Student_Info_Manager;Integrated Security=True;Encrypt=False ");

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Student_Info_Table values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+DropDownList1.SelectedValue+"','"+double.Parse(TextBox3.Text)+"','"+TextBox4.Text+"')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord(); 
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM Student_Info_Table", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("UPDATE Student_Info_Table Set 'Student Name' = '" + TextBox2.Text + "' , Address = '" + DropDownList1.SelectedValue + "' , Age = '" + double.Parse(TextBox3.Text) + "' , Contact = '" + TextBox4.Text + "' where Student ID = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("DELETE Student_Info_Table WHERE 'Student ID' = '"+int.Parse(TextBox1.Text)+"'", con);
            comm.ExecuteNonQuery(); 
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("SELECT * from Student_Info_Table WHERE 'Student ID' = '" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;   
            GridView1.DataBind();   
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT * FROM Student_Info_Table WHERE 'Student ID' = '" + int.Parse(TextBox1.Text) + "'", con); 
            SqlDataReader r = comm.ExecuteReader(); 
            while(r.Read())
            {
                TextBox2.Text = r.GetValue(1).ToString();
                DropDownList1.SelectedValue = r.GetValue(2).ToString();
                TextBox3.Text = r.GetValue(3).ToString();
                TextBox4.Text = r.GetValue(4).ToString();
            }
        }
    }
}