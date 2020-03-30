var max = 100, solution, rep;

function initjeu() {
    
    var oldtxt = document.getElementById("tete").querySelector("p");
    
    var newtxt = document.createElement("p");
    var intxt = document.createTextNode("Trouve le nombre entre 0 et " + max);
    
    newtxt.appendChild(intxt);
    
    document.getElementById("tete").replaceChild(newtxt, oldtxt);
}

function newligne(txt) {
    
    var lignRep = document.createElement("p");
    var blocRep = document.createTextNode(txt);
    
    lignRep.appendChild(blocRep);
    
    document.getElementById("repLst").appendChild(lignRep);
}

var audio = new Audio('dora_cest_gagné.mp3');

function play(reponse) {
    
    var texte;
    
    if (reponse > max || reponse < 0) {
        texte = "Impossible! " + reponse + " est hors des limites, regardes bien l'énoncé andouille!";
        alert("Tu ne m'as pas l'air bien futé, tu as dû prendre feu dans ton berceau étant petit et tes parents ont dû vouloir t'éteindre à coup de pelle...");
    }else {
        
        if (reponse > solution) {
            texte = "Quel con! " + reponse + " est trop grand face de pet";
        }
        
        if (reponse < solution) {
            texte = "Gogol! " + reponse + " est trop petit tronche de raie";
        }
        
        if (reponse == solution) {
            audio.play();
            var oui = confirm("C'est gagné ! Yes we did it!! \nAllez t'emballe pas... Une autre, branle-quequette?");
            if (oui) {
            max += 100; 
            solution = Math.floor(Math.random() * max);
            initjeu();
    } else {
        window.location="index-1 - principal.html"
    }
    }
    }
    newligne(texte);
}

function newTry() {
    
    if (solution == undefined) {
        solution = Math.floor(Math.random() * max);
    }
    
    rep = undefined;
    
    while ( typeof(rep) != "number" || isNaN(rep)) {
        rep = parseInt(prompt("Quelle est ta proposition ?","saisir un nombre"));
    }
    play(rep);
}

initjeu();