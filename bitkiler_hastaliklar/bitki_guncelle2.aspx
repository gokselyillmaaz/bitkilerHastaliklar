<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici.Master" AutoEventWireup="true" CodeBehind="bitki_guncelle2.aspx.cs" Inherits="bitkiler_hastaliklar.bitki_guncelle2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Bitki Güncelle</title>
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
	<div class="center" >
		<div class="wrap p-l-30 p-r-30 p-t-10 p-b-30">
			<form class="login100-form validate-form" runat="server">
				<span class="login100-form-title p-b-37">
					Bitki Ekle
				</span>

				<div class="wrap-input100 validate-input m-b-20" >
                    <asp:TextBox ID="txtBitkiID" runat="server" CssClass="input100"
						placeholder="Bitki ID"  ReadOnly="true"></asp:TextBox>
					<span class="focus-input100" ></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20" >
                    <asp:TextBox ID="txtBitkiAdiTr" runat="server" CssClass="input100"
						placeholder="Bitki Adı (Türkçe)"></asp:TextBox>
					<span class="focus-input100" ></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" >
					<asp:TextBox ID="txtBitkiAdiLatince" runat="server"
						CssClass="input100" placeholder="Bitki Adı (Latince)" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25">
					<asp:TextBox ID="txtBitkiFoto" runat="server"
						CssClass="input100" placeholder="Bitki Foto URL"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" >
					<asp:TextBox ID="txtBitkiAciklama" runat="server"
						CssClass="input100" placeholder="Bitki Aciklama" ></asp:TextBox>
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
