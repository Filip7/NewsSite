let modal = document.getElementById('myModal');

let img = document.getElementById('slikaMain');
let modalImg = document.getElementById("img01");
let captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
};

// Get the <span> element that closes the modal
let span = document.getElementsByClassName("close-image")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
};
