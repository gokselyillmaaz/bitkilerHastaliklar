<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anaSayfaHastaliklar.aspx.cs" Inherits="bitkiler_hastaliklar.anaSayfaHastaliklar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
    table, th, td {
      margin-top:20px;
      border: 1px  black;
    }
    </style>
    <form runat="server">
    <asp:TextBox ID="txtHastalik" runat="server" placeholder="Aranacak hastalığı girin"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click"  />
    <div><br /></div>
    <table style="width:100%">
        <tr>
            <th style="color:chocolate">Hastalık Adı (Türkçe)</th>
            <th style="color:chocolate">Hastalık Adı (Latince)</th>
            
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr style="height:50px">
                    <td><%#Eval("hastalikAdiTr") %></td>
                    <td><%#Eval("hastalikAdiLatince") %></td>
                    

                    
                    <td><asp:HyperLink ID="HyperLink2" 
                        NavigateUrl='<%# "~/anasayfaHastalikDetay.aspx?hastalikID="+Eval("hastalikID")%>'
                        runat="server" CssClass="btn btn-success">Detay</asp:HyperLink></td>
                    </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
