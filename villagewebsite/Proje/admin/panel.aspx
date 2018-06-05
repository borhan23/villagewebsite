<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="admin_yoneticipanelt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 122px;
            position: relative;
            left: 337px;
            top: 364px;
        }
        .auto-style2 {
            z-index: 1;
            left: 289px;
            top: 358px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ana" style="position: relative">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Style="z-index: 1; left: 44px; top: 51px; position: absolute" Text="Hoşgeldiniz "></asp:Label>
            &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Style="z-index: 1; left: 100px; top: 292px; position: absolute" Text="Resim yükle"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Style="z-index: 1; left: 321px; top: 293px; position: absolute" Text="Duyurular"></asp:Label>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <div class="auto-style1">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblAjaxZaman" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label>
                        <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </div>

            <asp:ImageButton ID="duyuru" runat="server" ImageUrl="~/image/Announcement-icon.png" OnClick="duyuru_Click" Style="position: absolute; z-index: 1; left: 296px; top: 144px" />
            <asp:ImageButton ID="cikis" runat="server" ImageUrl="~/image/Apps-session-logout-icon.png" OnClick="cikis_Click" Style="z-index: 1; left: 20px; top: 392px; position: absolute; height: 37px; width: 42px" />
            <asp:Label ID="labeltarih1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" CssClass="auto-style2"></asp:Label>
            <asp:ImageButton ID="resim" runat="server" ImageUrl="~/image/fotoupload.png" OnClick="resim_Click" Style="position: absolute; top: 130px; left: 68px; height: 151px; z-index: 1; width: 137px" />
        </div>
    </form>
</body>
</html>
