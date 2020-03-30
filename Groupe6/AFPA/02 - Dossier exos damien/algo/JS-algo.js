// recencer le nombre de jeunes de moins de 20 ans:

// Programme: nombre_de_jeunes

// CONSTANTES: Nbgens = 20
            // Limite =20

// VARIABLE: Nbjeunes: entier
          // Nbgensint: entier
          // Age: entier


// debut:


        

    
      /*var Nbgens = 20;
        var Limite = 20;
        var Nbgensint = 0;
        var Nbjeunes = 0;
        var Age = 0;
        function arr() {
                var input = document.getElementById("Age").value;
                var Nbjeunes = Age.value;
                alert(input);
        }
        do {
        Age = prompt("Entrez votre âge, s'il vous plait");

            if (Age < 20) {
                Nbjeunes = Nbjeunes +1;
            }
            Nbgensint = Nbgensint +1;
        
        while (Nbgensint < Nbgens) {


        if (Nbgensint == Limite) { 
    
        alert("Le nombre de jeunes de moins de 20 ans est de: " + Nbjeunes)
        
        console.log(Nbgensint, Nbjeunes)
        }}}*/
        
        var Nbgens = 20;
        var Limite = 20;
        var Nbgensint = 0;
        var Nbjeunes = 0;
        var Age = 0;
        function arr() {
                var input = document.getElementById( "Age" ).value;
                var Nbjeunes = Age.value;
                /*alert(input);*/
        }

while ( Nbgensint <= Limite ) {
            if ( Age < 20 ) {
                Nbgensint ++;
                Nbjeunes ++;
    }
            else {
                Nbgensint ++;
    }}
        alert( "Le nombre de jeunes de moins de 20 ans est de: " + Nbjeunes )

