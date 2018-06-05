<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="etkinlik.aspx.cs" Inherits="etkinlik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="lightbox.css" rel="stylesheet" />
    <script type="text/javascript" src="prototype.js"></script>
    <script type="text/javascript" src="scriptaculous.js?load=effects"></script>
    <script type="text/javascript" src="lightbox.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:50px auto 0px auto;
    padding:17px 15px 10px 15px;
    height:750px;
    top: 408px;
    left: 154px;
    width:900px;
    border:2px solid black;
    border-radius:5px;
    background-color:#161006;
    font-size:medium;
    font-family:Calibri;
    color:white;
    text-align:justify;">
        <ul class="galerimenu">
                    <li><a href="sonbahar.aspx">Sonbahar</a></li>
                    <li><a href="kis.aspx">Kış</a></li>
                    <li><a href="ilkbahar.aspx">İlkbahar</a></li>
                    <li><a href="yaz.aspx">Yaz</a></li>
                    <li><a href="park.aspx">Köy Parkı</a></li>
                    <li><a href="etkinlik.aspx">Etkinlikler</a></li>
                </ul>
        <div style="height:750px; overflow:auto;" >
       <asp:datalist ID="lstresimler" runat="server" RepeatColumns="3" Width="725px" BorderStyle="Solid" CellSpacing="10" BackColor="Black" CaptionAlign="Right" CellPadding="10" CssClass="datacss" >
                <AlternatingItemStyle BorderColor="Gray" />
                <ItemStyle CssClass="image" />
            <itemtemplate>
                <div ">
                    <a id="imageLink" href='<%# Eval("etkinlikyol") %>' rel="lightbox[Brussels]" runat="server">
                    <asp:Image CssClass="img" ImageUrl='<%#Eval("etkinlikyol") %>' runat="server" Width="200" Height="150" BorderStyle="NotSet" BorderColor="Silver" />
                    </a>
                </div>
            </itemtemplate>

            </asp:datalist>
            </div>
        </div>
</asp:Content>

