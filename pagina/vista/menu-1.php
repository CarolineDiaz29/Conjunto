
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <link rel="shortcut icon" href="45.jpg">
	<title>CONJUNTO RESIDENCIAL SANTA SOFIA</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="menu-1.css">
</head>
    <body>
    <header>
        <div class="button">
           <button type="button"><a href="index.php">CERRAR</a></button>
        </div>
		<div class="menu_bar">
			<a href="#" class="bt-menu"><span class="icon-list2"></span>Menú</a>
		</div>
     
		<nav>
			<ul>
                <li><a href="usuarios.php"><span class="icon-house"></span>Usuarios<span class="caret icon-arrow-down6"></span></a></li>
                <li><a href="EMPLEADOS.php"><span class="icon-suitcase"></span>Empleados<span class="caret icon-arrow-down6"></span></a></li>
                <li><a href="residente.php"><span class="icon-rocket"></span>Residentes<span class="caret icon-arrow-down6"></span></a></li>
                <li><a href="visitante.php"><span class="icon-earth"></span>Visitantes<span class="caret icon-arrow-down6"></span></a></li>
                <li><a href="ANUNCIOS.PHP"><span class="icon-mail"></span>Anuncio<span class="caret icon-arrow-down6"></span></a></li>
                <li><a href="PARQUEADERO.php"><span class="icon-rocket"></span>Parqueadero<span class="caret icon-arrow-down6"></span></a></li>
                <li><a href="Vehiculo.php"><span class="icon-earth"></span>Vehiculo<span class="caret icon-arrow-down6"></span></a></li>
                <li><a href="Cuentas%20de%20cobro.php"><span class="icon-mail"></span>Cobro<span class="caret icon-arrow-down6"></span></a></li>
			</ul>
		</nav>
    </header>
        <form>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="entrada.JPG" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="administracion.JPG" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>

<center><div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="5y6.JPG" style="width:50%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
            </div></center>
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="atras.JPG" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>
    <center><div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="3y7.jpg" style="width:80%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
        </div></center>
    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="atras.JPG" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
        </div>
  <center><div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="parqueadero.JPG" style="width:50%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
      </div></center>
    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="menu.JPG" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="taxi.JPG" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>
 <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="4y6.jpg" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="panoramica.jpg" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="salon.jpg" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="comunal.jpg" style="width:100%">
  <div class="text">Conjunto Residencial Santa Sofia</div>
</div>
    
    
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
    <span class="dot" onclick="currentSlide(4)"></span>
    <span class="dot" onclick="currentSlide(5)"></span>
    <span class="dot" onclick="currentSlide(6)"></span>
    <span class="dot" onclick="currentSlide(7)"></span>
    <span class="dot" onclick="currentSlide(8)"></span>
    <span class="dot" onclick="currentSlide(9)"></span>
     <span class="dot" onclick="currentSlide(10)"></span>
     <span class="dot" onclick="currentSlide(11)"></span>
     <span class="dot" onclick="currentSlide(12)"></span>
     <span class="dot" onclick="currentSlide(13)"></span>
</div>
        </form>
        <footer class="footer">
        <img src="https://img.icons8.com/dusk/48/000000/gmail.png"><p>santasofiasur1@hotmail.com</p>
        <img src="https://img.icons8.com/color/48/000000/pittsburgh-map.png"><p>Cll 42 sur #12-55</p>
        <p class="copy">&copy; CONJUNTO RESIDENCIAL SANTA SOFIA I ETAPA </p>
    </footer>
        <script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
	</body>
</html>