<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resimyukle.aspx.cs" Inherits="admin_resimyukle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left:30px;
            width: 442px;
            height: 331px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ana" style="z-index: 1">
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/Arrow-Back-icon.png" OnClick="ImageButton1_Click" style="z-index: 1; left: 17px; top: 393px; position: relative; width: 40px; height: 40px" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Kategori seçiniz"></asp:Label>
        <span class="auto-style1">
        <asp:ImageButton ID="sonbaharbtn" runat="server" Height="60px" ImageUrl="~/image/sonbahar.jpg" Width="440px" OnClick="sonbaharbtn_Click" />
        <asp:ImageButton ID="kisbtn" runat="server" Height="60px" ImageUrl="~/image/kis.jpg" Width="440px" OnClick="kisbtn_Click" />
        <asp:ImageButton ID="ilkbaharbtn" runat="server" Height="60px" ImageUrl="~/image/ilkbahar.jpg" Width="440px" OnClick="ilkbaharbtn_Click" />
        <asp:ImageButton ID="yazbtn" runat="server" Height="60px" ImageUrl="~/image/yaz.jpg" Width="440px" OnClick="yazbtn_Click" />
        <asp:ImageButton ID="parkbtn" runat="server" Height="88px" ImageUrl="~/image/park.jpg" Width="219px" OnClick="parkbtn_Click" />
        <asp:ImageButton ID="etkinbtn" runat="server" Height="88px" ImageUrl="~/image/etkinlik.jpg" Width="220px" OnClick="etkinbtn_Click" />
        </span>
    
    </div>
    </form>
</body>
</html>
