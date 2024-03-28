<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DocuFinder.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style type="text/css">
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .signup {
            width: 300px;
            padding: 20px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .signup h1 {
            margin-bottom: 20px;
        }

        .signup div {
            margin-bottom: 15px;
        }

        .signup label,
        .signup input,
        .signup button {
            width: 100%;
        }

        .signup button {
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
        }

        .signup button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="signup">
        <h1>Sign Up</h1>
        <div>
            <asp:Label ID="CIDLabel" runat="server" AssociatedControl="CID">CID:</asp:Label>
            <asp:TextBox ID="CID" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="FullNameLabel" runat="server" AssociatedControl="FullName">Full Name:</asp:Label>
            <asp:TextBox ID="FullName" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="PhoneNumberLabel" runat="server" AssociatedControl="PhoneNumber">Phone Number:</asp:Label>
            <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="UsernameLabel" runat="server" AssociatedControl="Username">Username:</asp:Label>
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="PasswordLabel" runat="server" AssociatedControl="Password">Password:</asp:Label>
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="SignUpButton" runat="server" OnClick="SignUpButton_Click" Text="Sign Up" />
            <asp:Label ID="StatusLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>