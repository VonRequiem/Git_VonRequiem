
// avec l'aide de Lucas et Loïc
//script nommé "espérance"
let toRegister = document.getElementById("toRegister");
let register = document.getElementById("register");

let toConnect = document.getElementById("toConnect");
let form_connection = document.getElementById("form_connection");

toRegister.addEventListener('click', function (){
    register.style.display = "inLine-block";
    form_connection.style.display = "none";
})
toConnect.addEventListener('click', function (){
    register.style.display = "none";
    form_connection.style.display = "inLine-block";
})
// c'est pas ce que j'esperais...
// je n'ai réussi à faire tout ce que je croyais abordable, pour moi cette évaluation est une catastrophe