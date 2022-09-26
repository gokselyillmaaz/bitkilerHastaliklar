<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="yoneticiSil1.aspx.cs" Inherits="bitkiler_hastaliklar.yoneticiSil1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
         <asp:TextBox ID="txtKullanici" runat="server" placeholder="Aranacak kullanıcıyı girin"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click"  />
        <div><br /></div>
    <table class="table table-condensed">
        <tr>
            <th style="color:chocolate">ID</th>
            <th style="color:chocolate">kullanıcı adı</th>
            <th style="color:chocolate">kullanıcı soyadı</th>
            <th style="color:chocolate">Mail Adresi</th>
            <th style="color:chocolate"></th>
        </tr>
        
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("kullaniciID") %></td>
                    <td><%#Eval("kullaniciAdi") %></td>
                    <td><%#Eval("kullaniciSoyadi") %></td>
                    <td><%#Eval("kullaniciMail") %></td>
                    <td><asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/yoneticiSil2.aspx?kullaniciID="+Eval("kullaniciID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
