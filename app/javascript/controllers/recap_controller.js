import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recap"
export default class extends Controller {

  connect() {

  }
  change(element) {
    const hidden_form =  document.getElementById("hiddenForm")

    Array.from(element.target.parentElement.children).forEach(item => {

      item.classList.remove('active')

    });
    element.target.classList.add('active')
    const input_value = element.target.innerText
    const hidden_input = document.createElement("input")
    hidden_input.value = input_value
    hidden_input.name = element.target.id.split('_').slice(1).join("_")


    }
    }
