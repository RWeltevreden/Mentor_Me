import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["reviewmodal"]

  new(event) {
    event.preventDefault()
    this.reviewmodalTarget.style.display = 'block'
  }

  close(event) {
    event.preventDefault()
    this.reviewmodalTarget.style.display = 'none'
  }

}
