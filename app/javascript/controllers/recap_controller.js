import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recap"
export default class extends Controller {

  connect() {
    this.hidden_form = document.createElement("form");
    this.hidden_form.id = "hidden_form"
    this.hiddenForm.action = "<%= catalog_order_path %>";
    this.hiddenForm.method = "PATCH"

  }
  change(element) {

    Array.from(element.target.parentElement.children).forEach(item => {

      item.classList.remove('active')

    });
    element.target.classList.add('active')
    const hidden_input = document.createElement("input")
    hidden_input.value = element.target.innerText
    hidden_input.name = element.target.id.split('_').slice(1).join("_")
    let nameAttributeValue = hidden_input.getAttribute('name');
    let existingChild = this.hidden_form.querySelector('[name="' + nameAttributeValue + '"]');

    if (existingChild) {
        this.hidden_form.replaceChild(hidden_input, existingChild);
    }
    else {
        this.hidden_form.appendChild(hidden_input);
    }
    console.log(element.target.innerText)
    console.log(hidden_input.value)
    console.log(this.hidden_form)
  }
}
