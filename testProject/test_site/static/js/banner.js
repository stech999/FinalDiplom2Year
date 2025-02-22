document.addEventListener('DOMContentLoaded', function () {
    const carousel = document.querySelector('.banner-carousel');
    const carouselTrack = carousel ? carousel.querySelector('.carousel-track') : null;
    const carouselSlides = carouselTrack ? carouselTrack.querySelectorAll('.carousel-slide') : [];
    const prevButton = carousel ? carousel.querySelector('.carousel-prev') : null;
    const nextButton = carousel ? carousel.querySelector('.carousel-next') : null;

    if (!carousel || !carouselTrack || !carouselSlides.length || !prevButton || !nextButton) {
        return;
    }

    let slideWidth;
    let slideIndex = 0;
    let autoSlideInterval;

    function updateCarousel() {
        slideWidth = carouselSlides[0].offsetWidth;
        carouselTrack.style.transform = `translateX(-${slideIndex * slideWidth}px)`;
        console.log('Slide width:', slideWidth); // Проверяем ширину слайда
        console.log('Transform:', carouselTrack.style.transform); // Проверяем transform
    }

    function startAutoSlide() {
        autoSlideInterval = setInterval(() => {
            slideIndex = (slideIndex + 1) % carouselSlides.length;
            updateCarousel();
        }, 5000);
    }

    function stopAutoSlide() {
        clearInterval(autoSlideInterval);
    }

    function prevSlide() {
        stopAutoSlide();
        slideIndex = (slideIndex - 1 + carouselSlides.length) % carouselSlides.length;
        updateCarousel();
        startAutoSlide();
    }

    function nextSlide() {
        stopAutoSlide();
        slideIndex = (slideIndex + 1) % carouselSlides.length;
        updateCarousel();
        startAutoSlide();
    }

    prevButton.addEventListener('click', prevSlide);

    nextButton.addEventListener('click', nextSlide);

    window.addEventListener('resize', () => {
        updateCarousel();
    });

    function initializeCarousel() {
        updateCarousel();
        startAutoSlide();
    }

    initializeCarousel();
});