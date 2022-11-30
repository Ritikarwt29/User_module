<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_User.aspx.cs" Inherits="Users.Login_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
          background-color: #F8F2FF;
        }
        .auto-style1 {
            width: 527px;
            height: 328px;
            position: absolute;
            top: 181px;
            left: 373px;
            z-index: 1;
            background:white;
        }
        .auto-style2 {
            position: absolute;
            top: 331px;
            left: 392px;
            z-index: 1;
            width: 100px;
            height: 34px;
            background:white;
            bottom: 341px;
        }
        .auto-style3 {
            position: absolute;
            top: 87px;
            left: 24px;
            z-index: 1;
            height: 30px;
            width: 77px;
            background :white;
        }
        .auto-style5 {
            position: absolute;
            top: 150px;
            left: 135px;
            z-index: 1;
            height: 29px;
            width: 286px;
            background:white;
        }
        .auto-style6 {
            position: absolute;
            top: 82px;
            left: 136px;
            z-index: 1;
            height: 29px;
            width: 287px;
            background:white;
        }
        .auto-style8 {
            position: absolute;
            top: 285px;
            left: 166px;
            z-index: 1;
            height: 28px;
            width: 173px;
            background:white;
        }
        .auto-style9 {
            position: absolute;
            top: 288px;
            left: 281px;
            z-index: 1;
            height: 12px;
            width: 68px;
            background: white;

        
        }
        .auto-style10 {
            height: 45px;
            background-color:#9d76ad;
            
        }
        .auto-style11 {
            margin-top: 150px;
            margin-left: 212px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        
        <div>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
                <h1 class="auto-style10">Login</h1>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Email:"></asp:Label>
                <asp:TextBox ID="Password" runat="server" CssClass="auto-style5" TextMode="Password" ></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style6" ></asp:TextBox>
               
                <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Not a Member?"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Sign-In" CssClass="auto-style11" Height="40px" Width="144px" />
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style9" href="https://localhost:44373/UserMvc/Create" OnClick="LinkButton1_Click">Register</asp:LinkButton>
            </asp:Panel>
            <asp:RequiredFieldValidator ID="Email" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:RequiredFieldValidator ID="Pass" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Password:"></asp:Label>
        </div>
    </form>
</body>
</html>

