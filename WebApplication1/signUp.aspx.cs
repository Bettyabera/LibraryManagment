using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication1
{
    public partial class signUp : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {
                ClientScript.RegisterStartupScript(GetType(), "MemberExists", "alert('Member Already Exists with this Member ID, try a different ID');", true);
            }
            else
            {
                SignUpNewMember();
            }
        }

        private bool CheckMemberExists()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand("SELECT COUNT(*) FROM member_master_tbl WHERE member_id = @member_id", connection))
                    {
                        command.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                        connection.Open();
                        int count = (int)command.ExecuteScalar();
                        return count > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "Error", $"alert('{ex.Message}');", true);
                return false;
            }
        }

        private void SignUpNewMember()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand("INSERT INTO member_master_tbl (full_name, dob, contact_no, email, state, city, pincode, full_address, member_id, password) VALUES (@full_name, @dob, @contact_no, @email, @state, @city, @pincode, @full_address, @member_id, @password)", connection))
                    {
                        command.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                        command.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                        command.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                        command.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                        command.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                        command.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                        command.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                        command.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                        command.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                        command.Parameters.AddWithValue("@password", TextBox9.Text.Trim());

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                ClientScript.RegisterStartupScript(GetType(), "SignUpSuccess", "alert('Sign Up Successful. Go to User Login to Log in');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "Error", $"alert('{ex.Message}');", true);
            }
        }
    }
}
