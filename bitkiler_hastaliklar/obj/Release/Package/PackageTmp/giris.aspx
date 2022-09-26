<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="bitkiler_hastaliklar.giris" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Giriş</title>
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
<!--===============================================================================================-->
</head>
<body>
	
	
	<div class="container-login100" style="background-color:green">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" runat="server">
				<span class="login100-form-title p-b-37">
					Giriş Ekranı
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Lütfen E-mail girin">
                    <asp:TextBox ID="txtKullanici" runat="server" CssClass="input100"
						placeholder="E-mail"></asp:TextBox>
					<span class="focus-input100" ></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Lütfen şifre girin">
					<asp:TextBox ID="txtSifre" runat="server"
						CssClass="input100" placeholder="Şifre" TextMode="Password"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <asp:Button ID="Button1" runat="server" Text="Giriş" 
						CssClass="login100-form-btn" OnClick="Button1_Click" 
						/>
				</div>

				

				<div class="text-center">
					<a href="uyeol.aspx" class="txt2 hov1">
						Üye Ol
					</a>
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

</body>
</html>