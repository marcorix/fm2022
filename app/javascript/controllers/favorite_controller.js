import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["button"]
  static values = {
    id: Number
  }


  connect() {
    console.log("hello from favorite controller")
  }

  send(event) {
    event.preventDefault();
    console.log(this.idValue)
    // fetch(this.element.action, {
    //   method: "POST",
    //   headers: { Accept: "application/json" },
    //   body: new FormData(this.formTarget),
    // })
    //   .then((response) => response.json())
    //   .then((data) => {
    //     console.log(data);
    //   });

  }
}
