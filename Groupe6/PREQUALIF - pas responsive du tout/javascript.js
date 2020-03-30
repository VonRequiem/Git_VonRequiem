var laPhoto = document.getElementById("photo");
var num_photo = 1;

function phNext() {
    
    if (num_photo < 5) {
        num_photo++ ;
    } else {
        num_photo = 1;
    }
    laPhoto.setAttribute('src', 'img/img' + num_photo + '.jpg');
}

function phPrec() {
    
    if (num_photo > 1) {
        num_photo--;
    } else {
        num_photo = 5;
    }

    laPhoto.setAttribute('src', 'img/img' + num_photo + '.jpg');
}


function zoomIn() {
    var taille = parseInt(laPhoto.getAttribute('width'));
    laPhoto.setAttribute('width', taille+20);
}
function zoomOut() {
    var taille = parseInt(laPhoto.getAttribute('width'));
    laPhoto.setAttribute('width', taille-20);
}
