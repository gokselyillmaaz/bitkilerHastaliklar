<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="bitki_guncelle.aspx.cs" Inherits="bitkiler_hastaliklar.bitki_guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:TextBox ID="txtBitki" runat="server" placeholder="Aradığınız bitkiyi girin"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click1" />
    <div><br /></div>
    <table class="table table-condensed">
        <tr>
            <th style="color:chocolate">ID</th>
            <th style="color:chocolate">Bitki adı</th>
            <th style="color:chocolate">Latince adı</th>
            <th style="color:chocolate"></th>
        </tr>
        
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("bitkiID") %></td>
                    <td><%#Eval("bitkiAdiTr") %></td>
                    <td><%#Eval("bitkiAdiLatince") %></td>
                    <td><asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/bitki_guncelle2.aspx?bitkiID="+Eval("bitkiID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
