using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DocuFinder
{
    public partial class SignUp : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            string fullName = FullName.Text;
            string phoneNumber = PhoneNumber.Text;
            string username = Username.Text;
            string cid = CID.Text;
            string password = Password.Text;

            // Add your sign-up logic here
            // Validate the user input, check if the username or CID already exists in the database, and save the new user information

            // Redirect the user to the login page or a success page after successful sign-up
            Response.Redirect("Login.aspx");
        }
    }
}