using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DocuFinder
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UserName.Text;
            string password = Password.Text;

            // Validate the username and password against your authentication system
            bool isAuthenticated = AuthenticateUser(username, password);

            if (isAuthenticated)
            {
                // Redirect the user to the home page or a specific page after successful login
                Response.Redirect("Home.aspx");
            }
            else
            {
                // Display an error message if the username and password are incorrect
                StatusLabel.Text = "Invalid username or password";
            }
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            // Redirect the user to the sign-up page
            Response.Redirect("SignUp.aspx");
        }

        private bool AuthenticateUser(string username, string password)
        {
            // Implement your authentication logic here
            // Check if the username and password are valid in your database or any other authentication system
            // Return true if the user is authenticated, otherwise return false

            // Example implementation:
            if (username == "admin" && password == "password")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}