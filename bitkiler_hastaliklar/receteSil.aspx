<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="receteSil.aspx.cs" Inherits="bitkiler_hastaliklar.receteSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        
    <table class="table table-condensed">
        <tr>
            <th style="color:chocolate">Reçete ID</th>
            <th style="color:chocolate">Bitki ID</th>
            <th style="color:chocolate">Hastalık ID</th>
            <th style="color:chocolate"></th>
        </tr>
        
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("receteID") %></td>
                    <td><%#Eval("receteBitkiID") %></td>
                    <td><%#Eval("receteHastalikID") %></td>
                    <td><asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/receteSil2.aspx?receteID="+Eval("receteID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    </form>
</asp:Content>
