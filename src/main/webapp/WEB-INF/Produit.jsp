<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" style="font-size: 16px;">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Product 1 Title">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>produit</title>
    <link rel="stylesheet" href="/nicepage.css" media="screen">
    <link rel="stylesheet" href="/produit.css" media="screen">
    <script class="u-script" type="text/javascript" src="/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.1.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
  <!-- fonts awesome -->
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
  <style>img#star{
    border: none;
    }</style>
  <script>
  var n = 5;
  function init(){
    var html = '';
    for (i=0; i<n; i++){
      id = i+1;
      html += '<a href="#"><img src="/images/starOut.png"';
      html += 'id="star" value="off" ';
      html += 'onMouseOver="over('+id+');" ';
      html += 'onMouseOut="out('+id+');" ';
      html += 'onClick="on('+id+')"/></a>'
    }
    document.getElementById("classement").innerHTML = html;
  }
  
  function over(nb){
    elemClassement = document.getElementById("classement");
    tabImg = elemClassement.getElementsByTagName("img");
    
    if (nb > 0)
      for (i=0; i<nb; i++)
        tabImg[i].src="/images/starOver.png";
    for (i=nb; i<n; i++)
      tabImg[i].src="/images/starOut.png";
  }
  
  function out(nb){
    elemClassement = document.getElementById("classement");
    tabImg = elemClassement.getElementsByTagName("img");
    
    for (i=0; i<nb; i++)
      tabImg[i].src="/images/starOut.png";
    for (i=0; i<n; i++){
      if (tabImg[i].value == "on")
        tabImg[i].src="/images/starOn.png";
    }
  }
  
  function on(nb){
    elemClassement = document.getElementById("classement");
    tabImg = elemClassement.getElementsByTagName("img");
    
    for (i=0; i<nb; i++){
      tabImg[i].src="/images/starOn.png";
      tabImg[i].value="on";
    }
    for (i=nb; i<n; i++){
      tabImg[i].src="/images/starOut.png";
      tabImg[i].value="off";
    }
    
    elemComment = document.getElementById("commentaire");
    text = nb+" etoiles";
    elemComment.innerHTML = text;
  }
  </script>
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="produit">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-stick-footer"><header class="u-black u-clearfix u-header" id="sec-8099"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
    <a href="/About.html" class="pimed-logo u-image u-logo u-image-1 u-logo-image u-logo-image-1" >
      <span style="color: brown;">PI</span><span style="color: darkgray;">MED</span> 
   </a>
        <nav class="u-align-left u-dropdown-icon u-menu u-menu-dropdown u-nav-spacing-25 u-offcanvas u-menu-1" data-responsive-from="XL">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link" href="#" style="font-size: calc(1em + 8px); color: rgb(17, 17, 17) !important;">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 53 53" ><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-c6da"></use></svg>
              <!-- j'ai supprimer cette attribut style=""  de la balise suivant svg -->
              <svg class="u-svg-content" viewBox="0 0 53 53" x="0px" y="0px" id="svg-c6da" style="enable-background:new 0 0 53 53;"><path style="fill:#E7ECED;" d="M18.613,41.552l-7.907,4.313c-0.464,0.253-0.881,0.564-1.269,0.903C14.047,50.655,19.998,53,26.5,53
	c6.454,0,12.367-2.31,16.964-6.144c-0.424-0.358-0.884-0.68-1.394-0.934l-8.467-4.233c-1.094-0.547-1.785-1.665-1.785-2.888v-3.322
	c0.238-0.271,0.51-0.619,0.801-1.03c1.154-1.63,2.027-3.423,2.632-5.304c1.086-0.335,1.886-1.338,1.886-2.53v-3.546
	c0-0.78-0.347-1.477-0.886-1.965v-5.126c0,0,1.053-7.977-9.75-7.977s-9.75,7.977-9.75,7.977v5.126
	c-0.54,0.488-0.886,1.185-0.886,1.965v3.546c0,0.934,0.491,1.756,1.226,2.231c0.886,3.857,3.206,6.633,3.206,6.633v3.24
	C20.296,39.899,19.65,40.986,18.613,41.552z"></path><g><path style="fill:#556080;" d="M26.953,0.004C12.32-0.246,0.254,11.414,0.004,26.047C-0.138,34.344,3.56,41.801,9.448,46.76
		c0.385-0.336,0.798-0.644,1.257-0.894l7.907-4.313c1.037-0.566,1.683-1.653,1.683-2.835v-3.24c0,0-2.321-2.776-3.206-6.633
		c-0.734-0.475-1.226-1.296-1.226-2.231v-3.546c0-0.78,0.347-1.477,0.886-1.965v-5.126c0,0-1.053-7.977,9.75-7.977
		s9.75,7.977,9.75,7.977v5.126c0.54,0.488,0.886,1.185,0.886,1.965v3.546c0,1.192-0.8,2.195-1.886,2.53
		c-0.605,1.881-1.478,3.674-2.632,5.304c-0.291,0.411-0.563,0.759-0.801,1.03V38.8c0,1.223,0.691,2.342,1.785,2.888l8.467,4.233
		c0.508,0.254,0.967,0.575,1.39,0.932c5.71-4.762,9.399-11.882,9.536-19.9C53.246,12.32,41.587,0.254,26.953,0.004z"></path>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-black u-text-hover-black" href="Profil-de-Client.html" style="padding: 10px 20px;">profil</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-black u-text-hover-black" href="Accueil.html" style="padding: 10px 20px;">Deconnexion</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-align-center u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-left u-nav u-popupmenu-items u-text-hover-custom-color-5 u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Profil-de-Client.html" style="padding: 10px 20px;">profil</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Accueil.html" style="padding: 10px 20px;">Deconnexion</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-2">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px; font-weight: 700;">
            <a class="u-button-style u-custom-active-border-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-left-right-menu-spacing u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          
          <div class="u-nav-container">
            <span style=" margin-right:30px;"> <input style="background-color: rgb(45, 47, 49) ; width:190px;" type="text" value="" placeholder="rechercher....">
              <button  style=" background-color:  rgb(45, 47, 49) ; color:white; padding: 4px;" type="">rechercher</button></span>
            <ul class="u-nav u-spacing-20 u-unstyled u-nav-3">
<li class="u-nav-item"><a class="u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-white  u-text-hover-white" style="color: rgb(146, 207, 236);" href="Accueil.html" style="padding: 10px;">Accueil</a>
</li><li class="u-nav-item"><a class="u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-white  u-text-hover-white" style="color: rgb(146, 207, 236);"></style>About</a>
</li><li class="u-nav-item"><a class="u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-white  u-text-hover-white" style="color: rgb(146, 207, 236);" href="produits.html" style="padding: 10px;">produits</a>
</li><li class="u-nav-item"><a class="u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-white  u-text-hover-white" style="color: rgb(146, 207, 236);" href="sinscrire.html" style="padding: 10px;">sinscrire</a>
</li><li class="u-nav-item"><a class="u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-white  u-text-hover-white" style="color: rgb(146, 207, 236);" href="se-connecter.html" style="padding: 10px;">se connecter</a>
</li><a href="panier1.html"> <i  class="fas fa-shopping-cart cart"></i>  </a></ul>
          </div>
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Accueil.html">Accueil</a>


</li><li  class="u-nav-item"><a class="u-button-style u-nav-link" href="About.html">About</a>
</li><li  class="u-nav-item"><a class="u-button-style u-nav-link" href="produits.html">produits</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="sinscrire.html">sinscrire</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="se-connecter.html">se connecter</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header> 
      
    <section class="u-clearfix u-custom-color-9 u-section-1" id="sec-ec94">
      <div class="u-custom-color-5 u-expanded-height u-shape u-shape-rectangle u-shape-1"></div>
      <div class="u-custom-color-5 u-expanded-height u-shape u-shape-rectangle u-shape-2"></div><!--product--><!--product_options_json--><!--{"source":""}--><!--/product_options_json--><!--product_item-->
      <div class="u-align-left u-container-style u-product u-product-1">
        <div class="u-container-layout u-container-layout-1"><!--product_image-->
          <img alt="" width="350" height="250" id="id" src="<c:url value='/images/8min.jpg'/>"><!--/product_image-->
          <h4 id="name" class="u-text u-text-default u-text-1" style="">Thétoscope</h4>
         <!-- etoiles -->
          <div style="margin-left: 550px; " id="classement" name="cls">
            <script>init();</script> <div style=" "  id="commentaire"></div>
          </div>
         
          <h6 style="margin-top: 5px;" class="u-text u-text-2">Description</h6>
          <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div><!--product_variations-->
          <div class="u-product-control u-product-variations u-product-variations-1"><!--product_variation-->
            <div class="u-product-variant">
              <label for="product-variant-select-1" class="u-label"><!--product_variation_label_content-->Prix:<!--/product_variation_label_content--></label>
              <label for="product-variant-select-1" id="price" style="margin-left: 20px;" class="u-label"><!--product_variation_label_content-->296$<!--/product_variation_label_content--></label><br>
              <label for="product-variant-select-1" class="u-label"><!--product_variation_label_content-->Quantite<!--/product_variation_label_content--></label>
              <div class="u-form-select-wrapper">
                <input id="qte" type="number" value="1" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"><!--product_variation_option-->
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div><!--/product_variation-->
          </div><!--/product_variations--><!--product_button--><!--options_json--><!--{"clickType":"add-to-cart","content":"ajouter au panier"}--><!--/options_json-->
          <a href="panier1.html" onclick='populateTableList()' class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-product-control u-white u-btn-1"><!--product_button_content-->ajouter au panier<!--/product_button_content--></a><!--/product_button--><!--product_button--><!--options_json--><!--{"clickType":"add-to-cart","content":"acheter"}--><!--/options_json-->
          <a href="se-connecter.html" class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-product-control u-text-black u-text-hover-white u-white u-btn-2"><!--product_button_content-->acheter<!--/product_button_content--></a><!--/product_button-->
        </div>
      </div><!--/product_item--><!--/product-->
      <!-- COMMENTAIRES -->
      <h3 style="margin-left: 30%;">Commentaires de nos clients:</h3>
<section style=" background-color: rgb(242, 243, 247);  margin-left: 30%; margin-right: 20%; margin-bottom: 3%; border: 2px #556080 solid;" >

  <div style="border: 1px solid; float: left; "><img style="margin-top: 20px; height: 150px; width: 150px;" src="<c:url value='/images/usericon.png'/>" alt="">
  </div>
  <div style=" float:none; width:auto;">
    <article style="margin-left: 17%;" >
        <h2>amanda macrom</h2>
        <time datetime="2012-4-27T14:42+01:00">Publié le 27 avril 14:42</time>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua.  </p>   
    </article>
  </div> 
 
    
  <div style="border: 1px solid; float: left; "><img style=" height: 150px; width: 150px;" src="<c:url value='/images/usericon.png'/>" alt="">
  </div>
  <div style=" float:none; width:auto;">
    <article style="margin-left: 17%;" >
        <h2>aponi lokas</h2>
        <time datetime="2012-4-27T14:42+01:00">Publié le 27 avril 14:42</time>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua.  </p>   
    </article>
  </div>
  
  <div style="border: 1px solid; float: left; "><img style=" height: 150px; width: 150px;" src="<c:url value='/images/usericon.png'/>" alt="">
  </div>
  <div style=" float:none; width:auto;">
    <article style="margin-left: 17%;" >
        <h2>nadi juli</h2>
        <time datetime="2012-4-27T14:42+01:00">Publié le 27 avril 14:42</time>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua.  </p>   
    </article>
  </div>
 
</section>
        
       
        
          
        
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
    <script class="u-script" type="text/javascript" src="/panier1.js" defer=""></script>
  </body>
</html>
