import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]

  // displayPage() {
  //   this.infosTarget.classList.add("d-none")
  //   this.formTarget.classList.remove("d-none")
  // }

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

// var popupLink = document.getElementById("popup-link");
//   var popupWindow = document.getElementById("popup-window");
//   var closeButton = document.getElementById("close-button");

//   popupLink.addEventListener("click", function(event) {
//     event.preventDefault();
//     popupWindow.style.display = "block";
//   });

//   closeButton.addEventListener("click", function() {
//     popupWindow.style.display = "none";
//   });
