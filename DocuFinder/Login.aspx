<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DocuFinder.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login {
            width: 300px;
            padding: 20px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .login h1 {
            margin-bottom: 20px;
        }

        .login h2 {
            margin-bottom: 20px;
        }

        .login div {
            margin-bottom: 15px;
        }

        .login label,
        .login input,
        .login button {
            width: 100%;
        }

        .login button {
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
        }

        .login button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="login">
        <h1>DocuFinder</h1>
        <h2>Login</h2>
        <div>
            <asp:Label ID="UserNameLabel" runat="server" AssociatedControl="UserName">Username:</asp:Label>
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="PasswordLabel" runat="server" AssociatedControl="Password">Password:</asp:Label>
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" />
            <asp:Label ID="StatusLabel" runat="server"></asp:Label>
        </div>
        <div>
            <h2>Don't have an account?</h2>
            <asp:Button ID="SignUpButton" runat="server" OnClick="SignUpButton_Click" Text="Sign Up" />
        </div>
    </form>
</body>
</html>