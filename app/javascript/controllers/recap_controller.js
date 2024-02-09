import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recap"
export default class extends Controller {

  static targets = ["hiddenForm"]
  connect() {
    // static values = {
    //   catalog_id : Number,
    //   id : Number
    // };

    // this.hiddenFormTarget = document.createElement("form");
    // this.hiddenFormTarget.id = "hiddenFormTarget"

    // this.hiddenForm.action = `/catalogs/${catalog_id}/orders/${id}`;
    // this.hiddenForm.method = "PATCH"

  }
  change(element) {

    Array.from(element.target.parentElement.children).forEach(item => {

      item.classList.remove('active')

    });
    element.target.classList.add('active')
    // const hidden_input = document.createElement("input")
    // hidden_input.value = element.target.innerText
    // hidden_input.name = element.target.id.split('_').slice(1).join("_")
    // let nameAttributeValue = hidden_input.getAttribute('name');
    // let existingChild = this.hiddenFormTarget.querySelector('[name="' + nameAttributeValue + '"]');

    // if (existingChild) {
    //     this.hiddenFormTarget.replaceChild(hidden_input, existingChild);
    // }
    // else {
    //     this.hiddenFormTarget.appendChild(hidden_input);
    // }
    // console.log(element.target.innerText)
    // console.log(hidden_input.value)
    // console.log(this.hiddenFormTarget)

    const name = "order[" + element.target.id.split('_').slice(1).join("_") + "]"
    const value = element.target.innerText || element.target.value
    const existingInput = this.hiddenFormTarget.querySelector('[name="' + name + '"]');
    if (existingInput) {
      existingInput.value = value
      return
    }
    const newInput = document.createElement("input")
    newInput.name = name
    newInput.value = value
    this.hiddenFormTarget.appendChild(newInput)
    const priceEl = document.getElementById("price")
    this.hiddenFormTarget.appendChild(priceEl.value)
  }

  submitForm() {
    this.hiddenFormTarget.submit()
  }

}
