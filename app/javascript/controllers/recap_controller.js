import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recap"
export default class extends Controller {
  // static targets = ['recapDisplay']
  connect() {

  }
  change(element) {

    const recap = document.querySelector(".custom")
    const outer_html = element.target.outerHTML
    if (!(element.target.classList.contains('active'))) {
      element.target.classList.add('active')
      const newitem = document.createElement('li')
    newitem.innerHTML = "<strong>Graphisme</strong> : Vérification"
    recap.appendChild( newitem)


    }
    else {
      element.target.classList.remove('active')

    }
    }
}
