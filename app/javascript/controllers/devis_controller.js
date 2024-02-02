import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="devis"
export default class extends Controller {
  connect() {

  }
  change(element){
    const priceEl = document.getElementById("price")
    // Delivery type
    const deliveryType = document.getElementById("delivery-type")
    // Quantities
    const qteXS = document.getElementById("qteXS")
    const qteS = document.getElementById("qteS")
    const qteM = document.getElementById("qteM")
    const qteL = document.getElementById("qteL")
    const qteXL = document.getElementById("qteXL")
    const qteXXL = document.getElementById("qteXXL")
    const qteTotal = Number(qteXS.value)+Number(qteS.value)+Number(qteM.value)+Number(qteL.value)+Number(qteXL.value)+Number(qteXXL.value)
    // Logo Size
    const logoWidth = document.getElementById("logo-width")
    const logoHeight = document.getElementById("logo-height")
    const logoArea = Number(logoWidth.value) * Number(logoHeight.value)

    // Setting price
    let price = qteTotal * (3.5  + logoArea * 1.5/100)
    if (deliveryType.checked){
      price += 10
    }
    // Displaying price
    priceEl.innerText = `Devis :${price} €`
  }
}
