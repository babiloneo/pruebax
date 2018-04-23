<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <script src="js/hcap.js" type="text/javascript"></script> 
        <script src="js/jquery-1.7.2.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body style="background-image: url(img/fondo.jpg);">
        <%// response.sendRedirect("http://172.16.0.160:8080/project/index.html"); %>
            <div id="principal">
                    <div id="extra1"></div>
                    <div id="uno"><img></div>
                    <div id="dos"></div>
                    <div id="tres"></div>
                    <div id="extra2"></div>
                    <div id="cuatro"><img src="img/flecha2.png"></div>
                    <div id="cinco"><img src="img/flecha.png"></div>
            </div>
    </body>    
</html>

<script type="text/javascript">
    
     
    $(document).ready(function() {
        $.ajax({
            url:'Consulta',
            type:'post',
            success:function(respuestas){
                console.log(respuestas);
            }
        });
    });
    
    
	window.addEventListener("load",init,false);

	window.onload = function() {
    document.getElementById('extra1').innerHTML = "<img src='img/icono6.png'>";
    document.getElementById('uno').innerHTML = "<img src='img/icono7.png'>";
    document.getElementById('dos').innerHTML = "<img src='img/icono1.png'>";
    document.getElementById('tres').innerHTML = "<img src='img/icono2.png'>";
    document.getElementById('extra2').innerHTML = "<img src='img/icono3.png'>";
    };
	function init(){
		document.addEventListener("keydown",keyAction1,false);
		};
                //
		var array = ["icono1", "icono2", "icono3","icono4","icono5", "icono6", "icono7"];
		var array2 = ["numero 1", "numero 2", "numero 3", "numero 4", "numero 5", "6 numero", "numero 7"];
		var d5 = 6;
		var d1 = 7;
		var d2 = 1;
		var d3 = 2;
		var d4 = 3;
		var respuesta = 0;
	function keyAction1 (e) {
	if(e.which == 39){

			if(d1==7){d1=0}
				if(d2==array.length){d2=0}
					if(d3==array.length){d3=0}
						if(d4==array.length){d4=0}
							if(d5==array.length){d5=0}
			d1++;d2++;d3++;d4++;d5++;	
			document.getElementById('extra1').innerHTML = "<img src='img/"+array[d5-1]+".png'>";	
			document.getElementById('uno').innerHTML = "<img src='img/"+array[d1-1]+".png'>";
			document.getElementById('dos').innerHTML = "<img src='img/"+array[d2-1]+".png'>";
			document.getElementById('tres').innerHTML = "<img src='img/"+array[d3-1]+".png'>";
			document.getElementById('extra2').innerHTML = "<img src='img/"+array[d4-1]+".png'>";


	}	
	if(e.which == 37){
	
	
    
			

			d1--;d2--;d3--;d4--;d5--;

		if(d1==0){d1=7}
				if(d2==0){d2=7}
					if(d3==0){d3=7}
						if(d4==0){d4=7}
							if(d5==0){d5=7}
			document.getElementById('extra1').innerHTML = "<img src='img/"+array[d5-1]+".png'>";					
			document.getElementById('uno').innerHTML = "<img src='img/"+array[d1-1]+".png'>"; 
			document.getElementById('dos').innerHTML = "<img src='img/"+array[d2-1]+".png'>"; 
			document.getElementById('tres').innerHTML = "<img src='img/"+array[d3-1]+".png'>"; 
			document.getElementById('extra2').innerHTML = "<img src='img/"+array[d4-1]+".png'>";
	}	
	if (e.which == 13) {
		alert(array2[d2-1]);
		
	}
	};
		

</script>


