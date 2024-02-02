import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recap"
export default class extends Controller {

  connect() {

  }
  change(element) {
    // const inputEl = document.querySelector('.popular-tag-widget')
    // const title = inputEl.querySelector('.widget-title').innerText
    // const recap = document.querySelector(".categories-widget")
    // const recapArray = Array.from(recap.querySelectorAll('ul.custom > li'))
    // const recap = Array.from(document.querySelector(".categories-widget").querySelectorAll("ul.custom > li"))
    // console.log(recapArray[0].innerText[0])

    element.target.classList.toggle('active')
    // if (!(element.target.classList.contains('active'))) {
      // console.log('no active found')
    //   const newitem = document.createElement('li')
    // newitem.innerHTML = "<strong>Graphisme</strong> : Vérification"
    // recap.appendChild( newitem)


    // }
    // else {
      // element.target.classList.remove('active')

    }
    }
