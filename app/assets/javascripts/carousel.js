class Carousel {
  constructor() {
    this.bindEvents();
  }

  bindEvents() {
    document.querySelector('.carousel-control-next').addEventListener('click', this.nextImg);
    document.querySelector('.carousel-control-prev').addEventListener('click', this.prevImg);
  }

  nextImg(e) {
    const currentImg = document.querySelector('.carousel-item.active');

    if (currentImg.nextElementSibling) {
      currentImg.classList.remove('active');
      currentImg.nextElementSibling.classList.add('active');
    } else {
      // this.displayNav();
    }
  }

  prevImg(e) {
    const currentImg = document.querySelector('.carousel-item.active');

    if (currentImg.previousElementSibling) {
      currentImg.classList.remove('active');
      currentImg.previousElementSibling.classList.add('active');
    }
  }
}

window.onload = function(e) {
  new Carousel();
};
