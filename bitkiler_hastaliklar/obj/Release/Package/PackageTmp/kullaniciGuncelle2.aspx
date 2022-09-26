<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="kullaniciGuncelle2.aspx.cs" Inherits="bitkiler_hastaliklar.kullaniciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kullanıcı Güncelle</title>
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <div class="center" >
		<div class="wrap p-l-30 p-r-30 p-t-10 p-b-30">
			<form class="login100-form validate-form" runat="server">
				<span class="login100-form-title p-b-37">
					Kullanıcı Güncelle
				</span>
				
				<div class="wrap-input100 validate-input m-b-20" >
                    <asp:TextBox ID="txtKullaniciID" runat="server" CssClass="input100"
						placeholder="Kullanıcı ID"  ReadOnly="true"></asp:TextBox>
					<span class="focus-input100" ></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20" >
                    <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="input100"
						placeholder="Kullanıcı Adı"></asp:TextBox>
					<span class="focus-input100" ></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" >
					<asp:TextBox ID="txtKullaniciSoyadi" runat="server"
						CssClass="input100" placeholder="Kullanıcı Soyadı" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25">
					<asp:TextBox ID="txtKullaniciMail" runat="server"
						CssClass="input100" placeholder="Kullanıcı Mail"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" >
					<asp:TextBox ID="txtKullaniciSifre" runat="server"
						CssClass="input100" placeholder="Kullanıcı Şifre" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				

				<div class="wrap p-l-20 p-r-30 p-t-10 p-b-30">
					<asp:Label ID="Label1" runat="server" Text="Kullanıcı Yönetici Mi?" Font-Bold="true"></asp:Label>

					<asp:DropDownList ID="txtkullaniciYoneticiMi" runat="server">
						 <asp:ListItem Enabled="true" Text="Hayır" Value="0"></asp:ListItem>
						 <asp:ListItem Text="Evet" Value="1"></asp:ListItem>
					</asp:DropDownList>
				</div>
                
				<div class="container-login100-form-btn">
                    <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" 
						CssClass="login100-form-btn" OnClick="btnGuncelle_Click1" 
						/>
				

				</div>

				<div>
					<br />
				</div>

				
			</form>
		</div>
	</div>
	

	
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
</asp:Content>

