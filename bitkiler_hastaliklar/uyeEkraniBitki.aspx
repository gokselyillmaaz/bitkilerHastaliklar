<%@ Page Title="" Language="C#" MasterPageFile="~/uye.Master" AutoEventWireup="true" CodeBehind="uyeEkraniBitki.aspx.cs" Inherits="bitkiler_hastaliklar.uyeEkraniBitki" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
    table, th, td {
      margin-top:20px;
      border: 1px  black;
    }
    .image{
        border-radius: 20px 20px 20px 20px  ;
        overflow: hidden;
    }
    </style>
    <form runat="server">
    <asp:TextBox ID="txtbitkiler" runat="server" placeholder="Aranacak bitkiyi girin"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click"   />
    <div><br /></div>
    <table style="width:100%">
        <tr>
            <th style="color:chocolate">Bitki Adı (Türkçe)</th>
            <th style="color:chocolate">Bitki Adı (Latince)</th>
            
            <th></th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("bitkiAdiTr") %></td>
                    <td><%#Eval("bitkiAdiLatince") %></td>
                    
                    <td><img class="image" src="<%#Eval("bitkiFoto") %>" style="height:100px;width:150px;padding:5px"/></td>
                    
                    <td><asp:HyperLink ID="HyperLink2" 
                        NavigateUrl='<%# "~/uyeEkraniBitkiDetay.aspx?bitkiID="+Eval("bitkiID")%>'
                        runat="server" CssClass="btn btn-success">Detay</asp:HyperLink></td>
                    </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
