var slideIndex = 0;
showSlide();

function nextBtn(n) {
    showSlide(slideIndex += n - 1);
}

function showSlide() {
    var slides = document.getElementsByClassName("slide-container-left");

    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";

    }
    slideIndex++;

    if (slideIndex > slides.length) {
        slideIndex = 1;
    }

    if (slideIndex < 1) {
        slideIndex = slides.length;
    }

    slides[slideIndex - 1].style.display = "block";

    setTimeout(showSlide, 2500);
}
