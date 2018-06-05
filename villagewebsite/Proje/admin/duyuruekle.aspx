<%@ Page Language="C#" AutoEventWireup="true" CodeFile="duyuruekle.aspx.cs" Inherits="admin_videoyukle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            top: 393px;
            left: 481px;
            z-index: 1;
        }

        .auto-style2 {
            overflow: auto;
            width: 342px;
            height: 354px;
            position: relative;
            top: -15px;
            left: 251px;
            z-index: 1;
        }

        .auto-style4 {
            position: relative;
            top: -372px;
            left: 11px;
            z-index: 1;
            width: 222px;
            height: 138px;
            margin-top: 0px;
        }

        .auto-style7 {
            position: relative;
            top: -316px;
            left: 12px;
            z-index: 1;
            width: 68px;
            right: -12px;
            height: 26px;
        }

        .auto-style8 {
            position: relative;
            top: -315px;
            left: 31px;
            z-index: 1;
            width: 51px;
            height: 27px;
        }

        .auto-style11 {
            position: relative;
            top: -324px;
            left: 215px;
            z-index: 1;
            width: 31px;
            height: 27px;
        }

        .auto-style12 {
            z-index: 1;
            left: 14px;
            top: 392px;
            position: relative;
        }

        .auto-style13 {
            position: relative;
            top: -448px;
            left: -18px;
            z-index: 1;
            height: 20px;
        }

        .auto-style14 {
            width: 56px;
            position: relative;
            left: 94px;
            top: -378px;
        }

        .auto-style15 {
            width: 240px;
            position: relative;
            left: 9px;
            top: -323px;
        }

        .auto-style16 {
            position: relative;
            left: 7px;
            top: -297px;
        }
        .auto-style17 {
            width: 205px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="anayolyukle">

            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/Arrow-Back-icon.png" OnClick="ImageButton1_Click" CssClass="auto-style12" />

            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style1" ImageUrl="~/image/Refresh-2-icon.png" />
            <div class="auto-style2">
                <asp:GridView ID="duyurugrid" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="341px" Width="324px">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
            <table class="auto-style14">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Duyuru"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:TextBox ID="txtduyuru" runat="server" CssClass="auto-style4" TextMode="MultiLine"></asp:TextBox>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label2" runat="server" Text="Düzenlenecek duyurunun id'si:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idgetir" runat="server" Width="22px"></asp:TextBox></td>
                </tr>
            </table>

            <asp:Button ID="btnguncelle" runat="server" CssClass="auto-style7" OnClick="btnguncelle_Click" Text="Güncelle" />
            <asp:Button ID="btnkaydet" runat="server" CssClass="auto-style8" Text="Kaydet" Visible="False" OnClick="btnkaydet_Click" />
            <table class="auto-style16">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Silinecek duyurunun id'si:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="silid" runat="server" Width="24px"></asp:TextBox></td>
                </tr>
            </table>

            <asp:Button ID="btnsil" runat="server" CssClass="auto-style11" Text="Sil" OnClick="btnsil_Click" />

            <asp:Button ID="btnekle" runat="server" CssClass="auto-style13" OnClick="btnekle_Click" Text="Ekle" />

        </div>
    </form>
</body>
</html>
