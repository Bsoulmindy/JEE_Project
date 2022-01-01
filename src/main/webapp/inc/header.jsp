<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="u-black u-clearfix u-header" id="sec-8099"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
    
    <a href="/About" class="pimed-logo u-image u-logo u-image-1 u-logo-image u-logo-image-1" >
      <span style="color: brown;">PI</span><span style="color: darkgray;">MED</span> 
      </a>
<c:if test="${user != null}">
        <nav class="u-align-left u-dropdown-icon u-menu u-menu-dropdown u-nav-spacing-25 u-offcanvas u-menu-1" data-responsive-from="XL">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link" href="#" style="font-size: calc(1em + 8px); color: rgb(17, 17, 17) !important;">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 53 53" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-c6da"></use></svg>
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-black u-text-hover-black" href="/logout" style="padding: 10px 20px;">Deconnexion</a>

</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-align-center u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-left u-nav u-popupmenu-items u-text-hover-custom-color-5 u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Profil-de-Client.html" style="padding: 10px 20px;">profil</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/logout" style="padding: 10px 20px;">Deconnexion</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
</c:if>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-2">
          <form action="produits" method="get">
          <div class="u-nav-container">
            
            <span style=" margin-right:30px;"> <input style="background-color: rgb(61 77 90); width:200px;" type="text" name="q" value="" placeholder="Chercher....">
               <input style="background-color:  rgb(61 77 90) ; color:white; padding: 4px;" type="submit" value="Chercher" required>
            </span>
            
            <ul class="u-nav u-spacing-20 u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-white u-text-hover-white" href="/" style="padding: 10px; color: rgb(146, 207, 236);">Accueil</a>
</li><li class="u-nav-item"><a class="u-border-active-grey-90 u-border-hover-grey-50 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-white u-text-hover-white" href="Produits" style="padding: 10px; color: rgb(146, 207, 236);">Produits</a>
</li><li class="u-nav-item"><a href="panier1.html"> <i  class="fas fa-shopping-cart cart"></i>  </a>
</li>
<c:if test="${user == null}">
<li class="u-nav-item"><a href="/register" class="me-2"><button type="button" class="btn btn-warning">Créer compte</button></a> 
</li><li class="u-nav-item"><a href="/login" class="me-2"><button type="button" class="btn btn-outline-light">Connexion</button></a>
</li>
</c:if>
</ul>



          
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/">Accueil</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="About">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Produits">Produits</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="sinscrire.html">Créer compte</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="se-connecter.html">Se connecter</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
          </form>
        </nav>
      </div></header>