<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yolyukle.aspx.cs" Inherits="admin_resimyolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            overflow: auto;
            height: 322px;
            width: 338px;
            z-index: 1;
            left: 69px;
            top: 37px;
            position: relative;
        }
        .auto-style2 {
            margin-right: 1px;
        }
        .auto-style3 {
            position: relative;
            left: 413px;
            top: -198px;
        }
        .auto-style4 {
            position: relative;
            left: 413px;
            top: -198px;
            width: 179px;
            height: 89px;
        }
        .auto-style5 {
            height: 51px;
        }
        .auto-style6 {
            height: 56px;
            z-index: 1;
            position: relative;
            top: -54px;
            left: 361px;
        }
        .auto-style7 {
            height: 56px;
            z-index: 1;
            position: relative;
            top: -55px;
            left: 8px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="anayolyukle">

            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style3" Style="z-index: 1; position: relative; top: 18px; left: 103px; right: -320px;" />
            <asp:Button ID="yukle" runat="server" Font-Bold="True" OnClick="yukle_Click" Text="Yükle" CssClass="auto-style2" Style="margin-bottom: 0px; margin-top: 0px; z-index: 1; position: relative; top: 20px; left: 148px;" Width="63px" />

            <div class="auto-style1">
                <asp:GridView ID="gridsonbahar" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="317px" Width="320px" CssClass="auto-style2">
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
            <table class="auto-style4">
                <tr>
                    <td colspan="2" class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Silinecek resimin id değerini giriniz."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="silinecekid" runat="server" Width="30px"></asp:TextBox>
                        <asp:Button ID="silbtn" runat="server" OnClick="silbtn_Click" Text="Sil" />
                    </td>
                </tr>
            </table>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/Arrow-Back-icon.png" OnClick="ImageButton1_Click" CssClass="auto-style7" />
            <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style6" ImageUrl="~/image/Refresh-2-icon.png" OnClick="ImageButton3_Click" />


        </div>
    </form>
</body>
</html>
