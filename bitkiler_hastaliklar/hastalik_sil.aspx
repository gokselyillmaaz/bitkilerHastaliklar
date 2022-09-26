<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="hastalik_sil.aspx.cs" Inherits="bitkiler_hastaliklar.hastalik_sil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
     <asp:TextBox ID="txtHastalik" runat="server" placeholder="Aranacak hastalığı girin"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click" />
        <div><br /></div>
    <table class="table table-condensed">
        <tr>
            <th style="color:chocolate">ID</th>
            <th style="color:chocolate">Hastalık adı</th>
            <th style="color:chocolate">Latince adı</th>
            <th style="color:chocolate"></th>
        </tr>
        
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("hastalikID") %></td>
                    <td><%#Eval("hastalikAdiTr") %></td>
                    <td><%#Eval("hastalikAdiLatince") %></td>
                    <td><asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/hastalik_sil2.aspx?hastalikID="+Eval("hastalikID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
