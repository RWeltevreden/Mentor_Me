import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]

  show(event) {
    this.modalTargets.forEach((modal) => {
      if (modal.dataset.mentorId == event.currentTarget.dataset.mentorId) {
        modal.style.display = "block";
      }
    })
  }

  close(event) {
    this.modalTargets.forEach((modal) => {
      if (modal.dataset.mentorId == event.currentTarget.dataset.mentorId) {
        modal.style.display = "none";
      }
    })
  }

}
