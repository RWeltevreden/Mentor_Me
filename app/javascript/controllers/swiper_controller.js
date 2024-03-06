import { Controller } from "@hotwired/stimulus"
// import Swiper from 'https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js'

// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    // console.log('Swiper connected');
    const swiper = new Swiper('.mySwiper', {
      pagination: {
        el: ".swiper-pagination",
      },
    })

  }
}
