﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kis.aspx.cs" Inherits="kis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="lightbox.css" rel="stylesheet" />
    <script type="text/javascript" src="prototype.js"></script>
    <script type="text/javascript" src="scriptaculous.js?load=effects"></script>
    <script type="text/javascript" src="lightbox.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="asilfoto">
        <ul class="galerimenu">
            <li><a href="sonbahar.aspx">Sonbahar</a></li>
            <li><a href="kis.aspx">Kış</a></li>
            <li><a href="ilkbahar.aspx">İlkbahar</a></li>
            <li><a href="yaz.aspx">Yaz</a></li>
            <li><a href="park.aspx">Köy Parkı</a></li>
            <li><a href="etkinlik.aspx">Etkinlikler</a></li>
        </ul>
        <div style="height: 1310px; overflow: auto;">
            <asp:DataList ID="lstresimler" runat="server" RepeatColumns="3" Width="725px" BorderStyle="Solid" CellSpacing="10" BackColor="Black" CaptionAlign="Right" CellPadding="10" CssClass="datacss">
                <AlternatingItemStyle BorderColor="Gray" />
                <ItemStyle CssClass="image" />
                <ItemTemplate>
                    <div>
                        <a id="imageLink" href='<%# Eval("kisyol") %>' rel="lightbox[Brussels]" runat="server">
                            <asp:Image CssClass="img" ImageUrl='<%#Eval("kisyol") %>' runat="server" Width="200" Height="150" BorderStyle="NotSet" BorderColor="Silver" />
                        </a>
                    </div>
                </ItemTemplate>

            </asp:DataList>
        </div>
    </div>
</asp:Content>

