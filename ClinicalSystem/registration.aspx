<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="ClinicalSystem.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration - Patient Clinical System</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="stylesheet/main.css"/> 
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&family=Didact+Gothic&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            height: 11px;
        }

        .hyperlink{
            text-decoration-line: underline;
            color: #000000;
            font-size: 13px;
            text-align: right;
        }

        .hyperlink:hover {
            text-decoration-line: none;
            font-size: 13.25px;
            color: rosybrown;
        }

        .hyperlink:visited {
            color: #f4dbc2;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <section>
        <blockquote></blockquote>
    </section>
    <section>
        <div class="header">
            <table class="auto-style1">
                <tr>
                    <th>PATIENT CLINICAL SYSTEM</th>
                </tr>
                <tr>
                    <th>PERPETUAL SUCCOUR GENERAL HOSPITAL</th>
                </tr> 
            </table>
        </div>
    </section>
    <section>
        <br/>
        <div class="form_type_1">
        <table>
            <tr>
                <th style="color: red">
                    <blockquote>
                        <asp:Label ID="RegistrationNoticeLabel" runat="server" Text=""></asp:Label>
                    </blockquote>
                </th>
            </tr>
        </table> 
        </div>
    </section>
    <section>
        <form id="form1" runat="server">
            <div class="form_type_1">
                <table>
                    <tr>
                        <td>
                        <fieldset>
                            <table>
                            <tr>
                                <td class="auto-style2">First Name: </td>
                                <td>
                                <asp:TextBox ID="FirstName_TextBox" runat="server" class="textbox" Width="234px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Firstname_RequiredFieldValidator" runat="server" ControlToValidate="FirstName_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Middle Initial: </td>
                                <td>
                                <asp:TextBox ID="MiddleName_TextBox" runat="server" class="textbox" Width="96px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="MiddleInitial_RequiredFieldValidator0" runat="server" ControlToValidate="MiddleName_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Last Name: </td>
                                <td>
                                    <asp:TextBox ID="LastName_TextBox" runat="server" class="textbox" Width="194px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Lastname_RequiredFieldValidator1" runat="server" ControlToValidate="LastName_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Status: </td>
                                <td class="auto-style2">
                                    <asp:DropDownList ID="Status_DropDownList" runat="server" Height="25px" Width="142px">
                                        <asp:ListItem>Single</asp:ListItem>
                                        <asp:ListItem>Married</asp:ListItem>
                                        <asp:ListItem>Widowed</asp:ListItem>
                                        <asp:ListItem>Separated</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Position: </td>
                                <td>
                                    <asp:DropDownList ID="Position_DropDownList" runat="server" Height="25px" Width="108px">
                                        <asp:ListItem Value="DOCTOR">Doctor</asp:ListItem>
                                        <asp:ListItem Value="NURSE">Nurse</asp:ListItem>
                                        <asp:ListItem Value="SECRETARY">Secretary</asp:ListItem> 
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr><td><blockquote></blockquote></td></tr>
                            </table>
                            <legend>&nbsp<b>Please Enter Your Personal Information</b>&nbsp</legend>
                        </fieldset>
                    </td>
                    </tr>
                    <tr>
                        <td><br/><br/></td>
                    </tr>
                    <tr>
                        <td>
                        <fieldset>
                            <table>
                            <tr>
                                <td class="auto-style2">Enter a Username: </td>
                                <td>
                                <asp:TextBox ID="Registration_Username_TextBox" runat="server" class="textbox" Width="285px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Registration_Username_RequiredFieldValidator2" runat="server" ControlToValidate="Registration_Username_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Password: </td>
                                <td>
                                    <asp:TextBox ID="Registration_Password_TextBox" runat="server" class="textbox" Width="285px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Registration_Password_RequiredFieldValidator4" runat="server" ControlToValidate="Registration_Password_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Re-enter Password: </td>
                                <td>
                                    <asp:TextBox ID="Reentered_Registration_Password_TextBox" runat="server" class="textbox" Width="285px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Reentered_Registration_Password_RequiredFieldValidator5" runat="server" ControlToValidate="Reentered_Registration_Password_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr><td><blockquote></blockquote></td></tr>
                            <tr>
                                <td colspan="2" align="center"><asp:Button ID="RegisterButton" runat="server" Text="Register" width="468px" Height="35px"
                                style="font-weight: 700;
                                font-family: 'Didact Gothic', sans-serif;
                                background-color: rosybrown;
                                border-color: rosybrown;
                                font-size: 15px;
                                color: white;
                                margin-right: 35px;
                                border-radius: 5px;" OnClick="RegisterButton_Click"/></td>
                            </tr>
                            </table>
                            <legend>&nbsp<b>Please Choose Your Login Credentials</b>&nbsp</legend>
                        </fieldset>
                    </td>
                    </tr>
                    <tr>
                        <td><blockquote></blockquote></td>
                    </tr> 
                    <tr> 
                        <td colspan="2"><a href="index.aspx" style="text-decoration-line: none;"><p class="hyperlink">Already have an account? Login Here.</p></a></td>
                    </tr>
                </table> 
            </div>
        </form>
    </section>
</body>
</html>
