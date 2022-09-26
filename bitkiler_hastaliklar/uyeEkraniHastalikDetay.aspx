<%@ Page Title="" Language="C#" MasterPageFile="~/uye.Master" AutoEventWireup="true" CodeBehind="uyeEkraniHastalikDetay.aspx.cs" Inherits="bitkiler_hastaliklar.uyeEkraniHastalikDetay" %>
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

       <table style="width:100%">
           <tr>
            <th style="color:chocolate">Hastalık Adı (Türkçe)</th>
               </tr>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate><tr>
                    <td><%#Eval("hastalikAdiTr") %></td></tr>
            </ItemTemplate>
        </asp:Repeater>
        </table>

        <table style="width:100%">
            <tr>
            <th style="color:chocolate">Hastalık Adı (Latince)</th></tr>
        <asp:Repeater ID="Repeater3" runat="server">
            <ItemTemplate><tr>
                    <td><%#Eval("hastalikAdiLatince") %></td></tr>
            </ItemTemplate>
        </asp:Repeater>
        </table>

        <table style="width:100%"><tr>
            <th style="color:chocolate">Hastalık Grubu</th></tr>
        <asp:Repeater ID="Repeater4" runat="server">
            <ItemTemplate><tr>
                    <td><%#Eval("hastalikGrubu") %></td></tr>   
            </ItemTemplate>
        </asp:Repeater>
        </table>

        <table style="width:100%"><tr>
            <th style="color:chocolate">Hastalık Tanımı</th></tr>
        <asp:Repeater ID="Repeater5" runat="server">
            <ItemTemplate><tr>
                    <td><%#Eval("hastalikTanim") %></td></tr>   
            </ItemTemplate>
        </asp:Repeater>
        </table>


        <table style="width:100%"><tr>
            <th style="color:chocolate">Hastalık Açıklama</th></tr>
        <asp:Repeater ID="Repeater6" runat="server">
            <ItemTemplate><tr>
                    <td><%#Eval("hastalikAciklama") %></td></tr>   
            </ItemTemplate>
        </asp:Repeater>
        </table>

        <table style="width:100%">
        <tr>
            <th style="color:chocolate">Bu hastalığa iyi gelen bitkiler</th>
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("bitkiAdiTr") %></td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
