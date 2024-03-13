import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["reviewmodal"]
  static values = { num: Number }

  new(event) {
    event.preventDefault()
    this.reviewmodalTarget.style.display = 'block'
  }

  close(event) {
    event.preventDefault()
    this.reviewmodalTarget.style.display = 'none'
  }

  fill(event) {
    // Call the removeStars() method before applying new styling
    // console.log(event.target);
    this.removeStars();
    const n = event.target.dataset.value;

    // Apply new styling to stars
    const stars = this.element.querySelectorAll(".star");

    [...stars].forEach((star, index) => {
      if (index <= n) {
        // console.log(star.dataset.value);
        star.classList.add("gold");
      }
    })
  }

  removeStars() {
    // Remove pre-applied styling
    const stars = this.element.querySelectorAll(".star");
    stars.forEach((star) => {
      star.classList.remove("gold");
    });
  }

}
