<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClinicalSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DeltaBay Login</title>
    <link rel="stylesheet" type="text/css" href="stylesheet/main.css"/> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>

    <style>
        body {
            background-color: #E8EEEC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark p-3">
            <div class="container">
              <a class="navbar-brand" href="#">Navbar</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
    
              <div class=" collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto ">
                  <li class="nav-item">
                    <asp:Button CssClass="" ID="SignIn" runat="server" Text="SIGN IN" OnClick="SignIn_Click" />
                  </li>
                  <li class="nav-item">
                    <asp:Button CssClass="" ID="SignUp" runat="server" Text="SIGN UP" />
                  </li>
                  <%--<li class="nav-item">
                    <a class="nav-link mx-2" href="#">Search Mentors</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link mx-2" href="#">Goals</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link mx-2" href="#">Profile</a>
                  </li>--%>
                </ul>
              </div>

            </div>
        </nav>

        <div style="height: 24em;" class="container">
            <div style="margin-top: 12em;" class="row justify-content-center">
                <div class="col-6" style="background-color: #95B2A2; border-radius: 1em;">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Email address</label>
                        <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Password</label>
                        <asp:TextBox CssClass="form-control"  ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="mb-3 justify-content-right">
                        <asp:Button CssClass="btn btn-primary btn-lg mb-3" ID="btnLogin" runat="server" Text="LOGIN" />
                        <asp:Button CssClass="btn btn-secondary btn-lg mb-3" ID="btnSignUp" runat="server" Text="SIGN UP" />
                    </div>
                </div>
            </div>
        </div>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
