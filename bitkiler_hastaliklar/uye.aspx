<%@ Page Title="" Language="C#" MasterPageFile="~/uye.Master" AutoEventWireup="true" CodeBehind="uye.aspx.cs" Inherits="bitkiler_hastaliklar.uye1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resimler/3.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h3>BİTKİ HAYATTIR</h3>
          <p>Eğer nasıl kullanacağını biliyorsan</p>
        </div>
      </div>

      <div class="item">
        <img src="resimler/2.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3>SAĞLIKLI OLMAK MÜMKÜN</h3>
          <p>Eğer bitkilere dokunursan</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resimler/1.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>ÇÖZÜM UZAKTA DEĞİL</h3>
          <p>İhtiyacınız olan her şey burada</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
</asp:Content>
 