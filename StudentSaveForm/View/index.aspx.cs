using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using StudentSaveForm.Classes;


namespace StudentSaveForm
{
    public partial class index : System.Web.UI.Page
    {
                
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            //Veritabanındaki tablonun ismini veriyoruz insert into'dan sonra !!!!!!!!!!!!!!!!!!'
            SqlCommand commandSave = new SqlCommand("Insert into StudentInformation (StudentNumber,StudentName,StudentSurname,StudentBirthDate,StudentGender,StudentUniversity,StudentDepartmant,StudentInternship)" +
                " values (@snumber,@sname,@ssurname,@sbirthdate,@sgender,@suniversity,@sdepartmant,@sinternship)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandSave.Parameters.AddWithValue("@snumber", Label1.Text);
            commandSave.Parameters.AddWithValue("@sname", Label2.Text);
            commandSave.Parameters.AddWithValue("@ssurname", Label3.Text);
            commandSave.Parameters.AddWithValue("@sbirthdate", Label4.Text);
            commandSave.Parameters.AddWithValue("@sgender", Label5.Text);
            commandSave.Parameters.AddWithValue("@suniversity", Label6.Text);
            commandSave.Parameters.AddWithValue("@sdepartmant", Label7.Text);
            commandSave.Parameters.AddWithValue("@sinternship", Label8.Text);

            commandSave.ExecuteNonQuery();
           
            Label9.Text = "Information is saved in database";
        }
    }
}