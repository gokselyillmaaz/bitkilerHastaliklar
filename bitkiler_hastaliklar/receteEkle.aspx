<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="receteEkle.aspx.cs" Inherits="bitkiler_hastaliklar.receteEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/Giris/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Giris/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Giris/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Giris/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Giris/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/Giris/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Giris/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Giris/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/Giris/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/Giris/css/util.css">
	<link rel="stylesheet" type="text/css" href="/Giris/css/main.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    table, th, td {
        margin-top:20px;
      border: 1px  black;
    }
    </style>
    <table class="center">
        
            <div class="center" >
		        <div class="wrap p-l-0 p-r- 0 p-t-10 p-b-30">
			        <form class="login100-form validate-form" runat="server">
				        <span class="login100-form-title p-b-37">
					        Hastalık Bitki Eşleştir
				        </span>

				        <div class="wrap-input100 validate-input m-b-20" >
                            <asp:TextBox ID="txtBitkiID" runat="server" CssClass="input100"
						        placeholder="Bitki ID"></asp:TextBox>
					        <span class="focus-input100" ></span>
				        </div>

				        <div class="wrap-input100 validate-input m-b-25" >
					        <asp:TextBox ID="txtHastalikID" runat="server"
						        CssClass="input100" placeholder="Hastalık ID" ></asp:TextBox>
					        <span class="focus-input100"></span>
				        </div>



				        <div class="container-login100-form-btn">
                            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" 
						        CssClass="login100-form-btn" OnClick="btnKaydet_Click"  
						        />
				        </div>

				        <div>
					        <br />
				        </div>

				
			        </form>
		        </div>
	        </div>
         
    </table>

	
<!--===============================================================================================-->
	<script src="/Giris/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/Giris/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/Giris/vendor/bootstrap/js/popper.js"></script>
	<script src="/Giris/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/Giris/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/Giris/vendor/daterangepicker/moment.min.js"></script>
	<script src="/Giris/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/Giris/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/Giris/js/main.js"></script>


       
    <table style="width:100%">
        <th>
            <center>
            <h4 >BİTKİLER</h4>
            </center>
        </th>
        <th>
            <center>
            <h4>HASTALIKLAR</h4>
            </center>
        </th>
    </table>
    <table class="table table-bordered" style="width:100%">
        <th>
            <table style="width:100%">
               
                <tr>
                    <th style="color:chocolate">Bitki ID</th>
                    <th style="color:chocolate">Bitki Adı (Türkçe)</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("bitkiID") %></td>
                            <td><%#Eval("bitkiAdiTr") %></td>
                         </tr>
                    </ItemTemplate>
                </asp:Repeater>
               
            </table>

                
        </th>

        <th>
            
            <table style="width:100%">
                <tr>
                    <th style="color:chocolate">Hastalık ID</th>
                    <th style="color:chocolate">Hastalık Adı (Türkçe)</th>
                </tr>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("hastalikID") %></td>
                            <td><%#Eval("hastalikAdiTr") %></td>
                         </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </th>
    </table>
</asp:Content>
