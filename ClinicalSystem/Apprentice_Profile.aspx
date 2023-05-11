<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apprentice_Profile.aspx.cs" Inherits="ClinicalSystem.Apprentice_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet/main.css"/> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>
</head>
<body>
    <form id="form1" runat="server">

       <nav class="navbar navbar-expand-lg p-3">
            <div class="container">
              <a class="navbar-brand" href="#">DeltaBay</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
    
              <ul class="navbar-nav ms-auto ">
                  <li class="nav-item">
                    <asp:Button CssClass="nav-link mx-2 buttonStyle" ID="AppMentors" runat="server" Text="Mentors" />
                  </li>
                  <li class="nav-item">
                      <asp:Button CssClass="nav-link mx-2 buttonStyle" ID="AppGoals" runat="server" Text="Goals" />
                  </li>
                  <li class="nav-item">
                      <asp:Button CssClass="nav-link mx-2 buttonStyle" ID="AppProfile" runat="server" Text="Profile" />
                  </li>
              </ul>
            </div>
        </nav>

        <div class="container">
            <div>
                Profile name
            </div>

            <div>
                About Me
            </div>

            <div>
                Skills
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
