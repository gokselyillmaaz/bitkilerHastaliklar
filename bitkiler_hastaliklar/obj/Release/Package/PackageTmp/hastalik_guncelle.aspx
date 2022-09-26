<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="hastalik_guncelle.aspx.cs" Inherits="bitkiler_hastaliklar.hastalik_guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:TextBox ID="txtHastalik" runat="server" placeholder="Aranacak hastalığı girin"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click"  />
    <div><br /></div>
    <table class="table table-condensed">
        <tr>
            <th style="color:chocolate">Hastalık Adı (Türkçe)</th>
            <th style="color:chocolate">Hastalık Adı (Latince)</th>
            <th style="color:chocolate">Hastalık Grubu</th>
            
            <th></th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("hastalikAdiTr") %></td>
                    <td><%#Eval("hastalikAdiLatince") %></td>
                    <td><%#Eval("hastalikGrubu") %></td>

                    
                    <td><asp:HyperLink ID="HyperLink2" 
                        NavigateUrl='<%# "~/hastalik_guncelle2.aspx?hastalikID="+Eval("hastalikID")%>'
                        runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink></td>
                    </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
