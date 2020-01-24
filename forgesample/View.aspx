<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="forgesample.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="libs/font-awesome-4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css" />
      <link href="css/main.css" rel="stylesheet" />
    
    <link rel="icon" href="ps_ico.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="ps_ico.ico" type="image/x-icon" />

    <title>Подбор деталей</title>
</head>
<body>
    <!-- Fixed navbar by Bootstrap: https://getbootstrap.com/examples/navbar-fixed-top/ -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <ul class="nav navbar-nav left">
                <li>
                    <a href="index.html" target="_blank">
            <img alt="VeloLove" src="logo.png" height="30" />
          </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html" style="color: #000; font-size: larger;">Главная</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="View.aspx" style="color: #000; font-size: larger;">Подбор деталей  <span class="sr-only">(current)></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: #000; font-size: larger;">Контакты</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- End of navbar -->
    <form id="form1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table class="table table-hover" width="100%">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Table Width="100%" runat="server" style="font-size: larger;">
                            <asp:TableRow>
                                <asp:TableCell Width="30%">
                                        <asp:Label runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="30%">
                                        <asp:Label runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="30%">
                                        <asp:Label runat="server" Text='<%# Eval("seller") %>'></asp:Label>
                                </asp:TableCell>
                                                                <asp:TableCell Width="10%">
                                        <asp:HyperLink runat="server" Text="Купить"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="frameSrc" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [price], [seller] FROM [frame]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="saddleSrc" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [price], [seller] FROM [saddle]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="tireSrc" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [price], [seller] FROM [tire]"></asp:SqlDataSource>
    </form>
        <footer id="sticky-footer" class="footer navbar-fixed-bottom">
        <div class="container text-center">
            <small>Copyright &copy; Гончаров Андрей, Вишняков Андрей, Попов Андрей, Зишко Сабина, Ерёмин Павел, 2019</small>
        </div>
    </footer>
</body>
        <script src="libs/jquery/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</html>
