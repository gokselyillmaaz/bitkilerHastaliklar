<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="kullaniciGuncelle.aspx.cs" Inherits="bitkiler_hastaliklar.kullaniciGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:TextBox ID="txtKullanici" runat="server" placeholder="Aranacak kullanıcıyı girin"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click"  />
    <div><br /></div>
    <table class="table table-condensed">
        <tr>
            <th style="color:chocolate">Adı</th>
            <th style="color:chocolate">Soyadı</th>
            <th style="color:chocolate">Mail</th>
            
            <th></th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("kullaniciAdi") %></td>
                    <td><%#Eval("kullaniciSoyadi") %></td>
                    <td><%#Eval("kullaniciMail") %></td>

                    
                    <td><asp:HyperLink ID="HyperLink2" 
                        NavigateUrl='<%# "~/kullaniciGuncelle2.aspx?kullaniciID="+Eval("kullaniciID")%>'
                        runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink></td>
                    </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
