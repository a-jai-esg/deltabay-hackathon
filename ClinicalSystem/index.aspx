<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ClinicalSystem.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login - Patient Clinical System</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="stylesheet/main.css"/> 
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
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
    </style>
    <script language="javascript" type="text/javascript">
        window.history.forward();
        function DisableBackButton() {
            window.history.forward();
        }

        setTimeout("preventBack()", 0);

        window.onunload = function () {
            null
        };
    </script>
</head>
<body>
    <section>
        <blockquote><br/></blockquote>
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
                        <asp:Label ID="NoticeLabel" runat="server" Text=""></asp:Label>
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
                                <td class="auto-style2">Username</td>
                                <td>
                                <asp:TextBox ID="Login_Username_TextBox" runat="server" class="textbox" Width="285px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Login_Username_RequiredFieldValidator" runat="server" ControlToValidate="Login_Username_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Password</td>
                                <td>
                                    <asp:TextBox ID="Login_Password_TextBox" runat="server" class="textbox" Width="285px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Login_Password_RequiredFieldValidator0" runat="server" ControlToValidate="Login_Password_TextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr><td><blockquote></blockquote></td></tr>
                            <tr>
                                <td colspan="2" align="center"><asp:Button ID="LoginButton" runat="server" Text="Login" width="397px" Height="35px"
                                style="font-weight: 700;
                                font-family: 'Didact Gothic', sans-serif;
                                background-color: rosybrown;
                                border-color: rosybrown;
                                font-size: 15px;
                                color: white;
                                margin-right: 35px;
                                border-radius: 5px;" OnClick="LoginButton_Click"/></td>
                            </tr>
                            </table>
                            <legend>&nbsp<b>User Login</b>&nbsp</legend>
                        </fieldset>
                    </td>
                    </tr>
                    <tr>
                        <td><blockquote></blockquote></td>
                    </tr> 
                    <tr> 
                        <td colspan="2"><a href="registration.aspx" style="text-decoration-line: none;"><p class="hyperlink">Unregistered? Register Here.</p></a></td>
                    </tr>
                </table> 
            </div>
        </form>
    </section>
</body>
</html>
