import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="devis"
export default class extends Controller {
  connect() {

  }
  change(element){
    const priceEl = document.getElementById("price")
    // Delivery type
    const deliveryType = document.getElementById("input_type_livraison")
    // Quantities
    const qteXS = document.getElementById("input_quantite_xs")
    const qteS = document.getElementById("input_quantite_s")
    const qteM = document.getElementById("input_quantite_m")
    const qteL = document.getElementById("input_quantite_l")
    const qteXL = document.getElementById("input_quantite_xl")
    const qteXXL = document.getElementById("input_quantite_xxl")
    const qteTotal = Number(qteXS.value)+Number(qteS.value)+Number(qteM.value)+Number(qteL.value)+Number(qteXL.value)+Number(qteXXL.value)
    // Logo Size
    const logoWidth = document.getElementById("input_logo_width")
    const logoHeight = document.getElementById("input_logo_height")
    const logoArea = Number(logoWidth.value) * Number(logoHeight.value)

    // Setting price
    let price = qteTotal * (3.5  + logoArea * 1.5/100)
    price = Math.round(price*100)/100
    if (deliveryType.checked){
      price = price +  10
    }
    // Displaying price
    priceEl.innerText = `Devis :${price} €`
  }
}
