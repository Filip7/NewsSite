console.log("Izvrsavanje validacije");

function provjera() {
    let slanjeForme = true;

    let naslovElem = document.getElementById("naslov");
    let naslov = naslovElem.value;
    if (naslov.length < 5 || naslov.length > 30) {
        naslovElem.style.border = "1px solid red";
        document.getElementById("naslovPoruka").innerHTML = "Naslov mora imati 5 do 30 znakova!";
        slanjeForme = false;
    }
    if (naslov === "") {
        naslovElem.style.border = "1px solid red";
        naslovElem.style.color = "red";
        document.getElementById("naslovPoruka").innerHTML = "Naslov ne smije biti prazan!";
        slanjeForme = false;
    }

    let kratkiSadrzajElem = document.getElementById('kratkiSadrzaj');
    let kratkiSadrzaj = kratkiSadrzajElem.value;
    if (kratkiSadrzaj.length < 10 || kratkiSadrzaj.length > 100) {
        kratkiSadrzajElem.style.border = "1px solid red";
        document.getElementById("kratkiSadrzajPoruka").innerHTML = "Kratki sadrzaj mora imati 10 do 100 znakova!";
        slanjeForme = false;
    }

    if (kratkiSadrzaj === "") {
        kratkiSadrzajElem.style.border = "1px solid red";
        document.getElementById("kratkiSadrzajPoruka").innerHTML = "Kratki sadrzaj ne smije biti prazan!";
        slanjeForme = false;
    }


    let glavniTekstElem = document.getElementById('glavniTekst');
    let glavniTekst = glavniTekstElem.value;
    if (glavniTekst.length < 10 || glavniTekst.length > 1000) {
        glavniTekstElem.style.border = "1px solid red";
        document.getElementById('glavniTekstPoruka').innerHTML = "Tekst mora imati 10 do 1000 znakova!";
        slanjeForme = false;
    }

    if (glavniTekst === "") {
        glavniTekstElem.style.border = "1px solid red";
        document.getElementById('glavniTekstPoruka').innerHTML = "Tekst ne smije biti prazan!";
        slanjeForme = false;
    }

    if (document.getElementById("checkBoxSakrij").checked === true) {
        let upit = confirm("Jeste li sigurni da zelite sakriti vijest?");
        if (upit === false) {
            slanjeForme = false;
        }
    }

    console.log("Slanje forme: " + slanjeForme);
    if (slanjeForme !== true) return false;
}

console.log("Izradio Filip M.");