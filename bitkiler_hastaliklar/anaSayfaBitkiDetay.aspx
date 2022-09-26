<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anaSayfaBitkiDetay.aspx.cs" Inherits="bitkiler_hastaliklar.anaSayfaBitkiDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
    table, th, td {
        margin-top:20px;
        margin-left:10px;
      border: 1px  black;
    }
    .image{
        
        border-radius: 20px 20px 20px 20px  ;
        overflow: hidden;
    }
    </style>
     <form runat="server">
         <table>
             <th><asp:Repeater ID="Repeater3" runat="server">
            <ItemTemplate>
                
                    <div class="container-fluid">
                      <div class="row">
                         <center>
                            <td><img class="image" src="<%#Eval("bitkiFoto") %>" style="vertical-align:middle;height:400px;width:600px"/></td>
                        </center></div></div>
                    
            </ItemTemplate>
        </asp:Repeater></th>

             <th>
                 <table style="width:100%">
        <tr>
            <th style="color:chocolate">Bitki Adı (Türkçe)</th>
            
            
            <th></th>
        </tr>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("bitkiAdiTr") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>



        <table style="width:100%">
        <tr>
            <th style="color:chocolate">Bitki Adı (Latince)</th>
            
            
            <th></th>
        </tr>
        <asp:Repeater ID="Repeater5" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("bitkiAdiLatince") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>


           <table style="width:100%">
        <tr>
            <th style="color:chocolate">Bitki Açıklama</th>
            <th></th>
        </tr>
        <asp:Repeater ID="Repeater4" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("bitkiAciklama") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

        
        
        <table style="width:100%">
        <tr>
            <th style="color:chocolate">Bu bitkinin iyi geldiği hastalıklar</th>
            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("hastalikAdiTr") %></td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>

             </th>         

         </table>
    </form>
</asp:Content>

        
       