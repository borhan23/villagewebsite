<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Köy Yönetici Panel</title>
    <link href="adminstyle.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            height: 4px;
            width: 92px;
        }
        .auto-style2 {
            height: 149px;
            width: 154px;
            position: relative;
            left: 2px;
            top: 37px;
        }
        .auto-style3 {
            height: 32px;
            width: 92px;
        }
        .auto-style4 {
            width: 258px;
            height: 86px;
            position: relative;
            left: 166px;
            top: 175px;
            margin-top: 0px;
        }
        .auto-style5 {
            height: 32px;
            width: 59px;
        }
        .auto-style6 {
            height: 4px;
            width: 59px;
        }
        .auto-style7 {
            position: relative;
            top: 63px;
            left: 224px;
            z-index: 1;
            width: 64px;
            height: 33px;
            margin-bottom: 0px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="ana">
            <table border="0" cellspacing="3" class="auto-style4">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtad" runat="server" Width="108px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">

                        <asp:Label ID="Label2" runat="server" Text="Şifre" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtsifre" runat="server" TextMode="Password" Width="108px"></asp:TextBox>
                    </td>
                </tr>
            </table>

            &nbsp;<img alt="" class="auto-style2" src="../image/keylogin.png" /><asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Giriş" BackColor="#CCCCCC" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="#990000" />
            <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" OnClick="Button2_Click" style="z-index: 1; left: -195px; top: 176px; position: relative; right: 89px" Text="Siteye git" />
        </div>
    </form>
</body>
</html>
