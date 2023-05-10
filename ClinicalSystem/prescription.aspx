<%@ Page Language="C#" AutoEventWireup="true" debug="true" CodeBehind="prescription.aspx.cs" Inherits="ClinicalSystem.prescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prescription - Patient Clinical System</title> 
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="stylesheet/main.css"/> 
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&family=Didact+Gothic&display=swap" rel="stylesheet"/>     
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 187px;
        }
        .auto-style3 {
            width: 187px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 38px;
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
    <form id="form1" runat="server"> 
    <section>
        <div class="header">
            <table class="auto-style1">
                <tr>
                    <th>PATIENT CLINICAL SYSTEM</th>
                </tr>
                <tr>
                    <th>PERPETUAL SUCCOUR GENERAL HOSPITAL</th>
                </tr>
                <tr>
                    <th>PRESCRIPTION</th>
                </tr>
            </table>
        </div>
    </section> 
    <section> 
            <div class="form_type_1">
                <table>
                    <tr>
                        <td class="auto-style4">Prescription No.</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="Prescription_No_TextBox" runat="server" class="textbox" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style4">Consultation No.</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="Consultation_No_TextBox" runat="server" class="textbox" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style4">Date</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="Date_TextBox" runat="server" class="textbox" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                </table> 
            </div>
            <br/>
            <div class="form_type_1">
                <table>
                    <tr>
                        <td>
                            <fieldset>
                            <table>
                            <tr>
                                <td class="auto-style2">Patient Code</td>
                                <td>
                                <asp:TextBox ID="Patient_Code_TextBox" runat="server" class="textbox" Width="285px" OnTextChanged="Patient_Code_TextBox_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Patient Name</td>
                                <td>
                                    <asp:TextBox ID="Patient_Name_TextBox" runat="server" class="textbox" Width="309px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Patient Age</td>
                                <td>
                                    <asp:TextBox ID="Patient_Age_TextBox" runat="server" class="textbox" Width="117px"></asp:TextBox>
                                </td>
                            </tr>
                            </table>
                            <legend>Patient Info</legend>
                        </fieldset>
                    </td>
                    </tr>
                </table> 
            </div>
            <br/>
            <div class="form_type_1">
                <table> 
                    <tr>
                        <td>
                            <fieldset>
                            <table>
                            <tr>
                                <td class="auto-style3">Medicine Code</td>
                                <td class="auto-style4">
                                <asp:TextBox ID="Medicine_Code_TextBox" runat="server" class="textbox" Width="134px" OnTextChanged="Medicine_Code_TextBox_TextChanged" TextMode="Number"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Quantity</td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="Quantity_TextBox" runat="server" class="textbox" Width="133px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Remarks</td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="Remarks_TextBox" runat="server" class="textbox" Width="307px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td colspan="3">
                                    <asp:DataGrid ID="Prescription_DataGrid" runat="server" Width="734px" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
                                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    </asp:DataGrid>
                                </td>
                            </tr>
                            </table>
                            <legend>Medicine to Prescribe</legend> 
                        </fieldset>
                    </td>
                    </tr>
                </table> 
            </div>
            <br/><br/>
            <div class="form_type_1">
                <br/><br/> 
                <table>
                    <tr>
                        <td class="auto-style5"><span class="textbox">Prepared by:</span> 
                            <asp:TextBox ID="Prepared_By_Position_TextBox" class="textbox" runat="server"></asp:TextBox>
                            <asp:TextBox ID="Prepared_By_Username_TextBox" class="textbox" runat="server"></asp:TextBox>
                            <asp:Button ID="SaveButton" runat="server" Text="Save" width="157px" Height="35px"
                                style="font-weight: 700;
                                font-family: 'Didact Gothic', sans-serif;
                                background-color: rosybrown;
                                border-color: rosybrown;
                                font-size: 15px;
                                color: white;
                                margin-right: 35px;
                                border-radius: 5px;" OnClick="SaveButton_Click"/>
                            <asp:Button ID="ClearButton" runat="server" Text="Clear" width="126px" Height="35px" 
                                style="font-weight: 700;
                                font-family: 'Didact Gothic', sans-serif;
                                background-color: rosybrown;
                                border-color: rosybrown;
                                font-size: 15px;
                                color: white;
                                margin-right: 35px;
                                border-radius: 5px;" OnClick="ClearButton_Click"/>
                        </td>
                    </tr>
                </table>
            </div> 
    </section>
    <br/><br/>
    <section>
        <div class="form_type_1">
            <p align="right" style="color: red; font-weight: 700; font-family: 'Didact Gothic', sans-serif; margin-right: 25px;"><asp:Label ID="SessionNoticeLabel" runat="server" Text=""></asp:Label> 
            </p>
        </div>
        <div class="form_type_1" align="right">
            <asp:Button ID="LogOutButton" runat="server" Text="Log Out" style="font-weight: 700;
                                font-family: 'Didact Gothic', sans-serif;
                                background-color: rosybrown;
                                border-color: rosybrown;
                                font-size: 15px;
                                color: white;
                                margin-right: 25px;
                                border-radius: 5px;" Height="34px" OnClick="LogOutButton_Click"/>
        </div>
    </section>
    <br/>
    </form>
</body>
</html>
