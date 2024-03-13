import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["socialsmodal"]

  new(event) {
    event.preventDefault()
    this.socialsmodalTarget.style.display = 'block'
  }

  close(event) {
    event.preventDefault()
    this.socialsmodalTarget.style.display = 'none'
  }
}
