class Carousel {
  constructor() {
    this.bindEvents();
  }

  bindEvents() {
    document.querySelector('.carousel-control-next').addEventListener('click', this.nextImg.bind(this));
    document.querySelector('.carousel-control-prev').addEventListener('click', this.prevImg.bind(this));
  }

  nextImg(e) {
    const currentImg = document.querySelector('.carousel-item.active');

    if (currentImg.nextElementSibling) {
      currentImg.classList.remove('active');
      currentImg.nextElementSibling.classList.add('active');
    } else if (!this.isNavShowing()) {
      this.displayNav();
    }
  }

  prevImg(e) {
    const currentImg = document.querySelector('.carousel-item.active');

    if (this.isNavShowing()) {
      this.hideNav();
    } else if (currentImg.previousElementSibling) {
      currentImg.classList.remove('active');
      currentImg.previousElementSibling.classList.add('active');
    }
  }

  isNavShowing() {
    return !!document.querySelector('.carousel-nav.show');
  }

  displayNav() {
    document.querySelector('.carousel-nav').classList.add('show');
  }

  hideNav() {
    document.querySelector('.carousel-nav.show').classList.remove('show');
  }
}
