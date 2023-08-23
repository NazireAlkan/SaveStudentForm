<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StudentSaveForm.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <title></title>
    <style>
       .custom {
           width: 100%;
       }

       .custom-drop {
           width: inherit;
       }
    </style>
</head>
<body>
    <form  id="form1" runat="server">
        <div class="container border rounded mt-2 w-25" style="background-image: url(https://images.pexels.com/photos/2680270/pexels-photo-2680270.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)">
            <%-- Name --%>
            <div class="mb-1">
                <label for="Label1" class="form-label text-black">Number</label>
                <asp:TextBox ID="Label1" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
            </div>
            <%--Surname --%>
            <div class="mb-1">
                <label for="Label2" class="form-label text-black">Name</label>
                <asp:TextBox ID="Label2" TextMode="SingleLine" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <%-- Number --%>
            <div class="mb-1">
                <label for="Label3" class="form-label text-black">Student Surname</label>
                <asp:TextBox ID="Label3" TextMode="SingleLine" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <%-- Date Of Birth--%>
            <div class="mb-1">
                <label for="Label4" class="form-label text-black">Date Of Birth</label>
                <asp:TextBox ID="Label4" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <%-- Gender--%>
            <label for="Label5" class="form-label text-black">Gender</label><br />
            <div class="mb-1 custom">
                <asp:DropDownList ID="Label5" runat="server" CssClass="form-control form-select custom-drop "
                    AppendDataBoundItems="true" Height="40px">
                    <asp:ListItem Value="1">Women</asp:ListItem>
                    <asp:ListItem Value="2">Man</asp:ListItem>
                    <asp:ListItem Value="3">I don't specify</asp:ListItem>
                </asp:DropDownList>
            </div>
            <%--University--%>
            <div class="mb-1">
                <label for="Label6" class="form-label text-black">University</label>
                <asp:TextBox ID="Label6" TextMode="SingleLine" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <%--  Departmant--%>
            <div class="mb-1">
                <label for="Label7" class="form-label text-black">Departmant</label>
                <asp:TextBox ID="Label7" TextMode="SingleLine" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <%-- Internship--%>
            <label for="Label8" class="form-label text-black">Internship</label><br />
            <div class="mb-3 custom">
                <asp:DropDownList ID="Label8" runat="server" CssClass="form-control form-select custom-drop"
                    AppendDataBoundItems="true" Height="40px">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="2">No</asp:ListItem>
                    <asp:ListItem Value="3">continues</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="display: flex; width:100%; justify-content: center">
                <asp:Button runat="server" CssClass="btn btn-outline-dark btn-lg mb-2" Text="Create Me" ID="btnCreate" OnClick="btnCreate_Click"/>
            </div>
            <asp:Label ID="Label9" runat="server" Text="" CssClass="form-label table-dark"  Width="300px"></asp:Label>
        </div>
    </form>
</body>
</html>
