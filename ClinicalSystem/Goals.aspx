<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Goals.aspx.cs" Inherits="ClinicalSystem.Goals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                Goals
            </div>

            <div>
                Descriptions
            </div>

            <div>
                Skills
            </div>
        </div>
    </form>
</body>
</html>
