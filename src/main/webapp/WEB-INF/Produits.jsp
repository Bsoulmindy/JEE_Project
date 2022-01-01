<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Black, FRiday, 70%, off all, 01, Awesome Interiors, 02, Fresh and Creative, INSPIRED DESIGN.&nbsp;UNPARALLELED EXPERIENCE.EXEMPLARY SERVICE., Follow Us!, Sale50%, man outlet, Or just reach us right here, Let&amp;apos;s get social!">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>produits</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="produits.css" media="screen">
    <link rel="stylesheet" href="bootstrap.min.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.1.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <!-- fonts awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
   
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="produits">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-overlap u-stick-footer">
    <c:import url="/inc/header.jsp"/>

    <section class="u-align-center u-clearfix u-section-1" id="sec-fc6e">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-default u-text-1">Liste des produits</h2><!--products--><!--products_options_json--><!--{"type":"Recent","source":"","tags":"","count":""}--><!--/products_options_json-->
        <div class="d-flex flex-row justify-content-evenly flex-wrap bd-secondary my-5 mx-4">
          <c:forEach items="${ stocks }" var="stock">
          <a href="/produit/${stock.getProduit().getId()}" class="zoom text-decoration-none text-dark mx-4 mb-3 bg-light-shadow" anim="ripple">
          <div>
            <img src="<c:url value='ressources/${stock.getProduit().getUrlImageProduit()}'/>" alt="${stock.getProduit().getNomProduit()}" width="256" height="169" class="rounded">
            <p class="my-2 text-center">${stock.getProduit().getNomProduit()}</p>
          </div>
          </a>
          </c:forEach>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-custom-color-5 u-footer u-footer" id="sec-f04e"><div class="u-align-left u-clearfix u-sheet u-sheet-1"></div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <p class="u-text">
        <span> &copy; All rights reserved by</span>
      </p>
      <a class="u-link" href="/About.html" target="_blank">
        <span>PIMED</span>
      </a>. 
    </section>
    <script src="bootstrap.min.js"></script>
    <script src="bootstrap.bundle.min.js"></script>
  </body>
</html>