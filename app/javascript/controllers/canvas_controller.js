import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="canvas"
export default class extends Controller {
  connect() {
    html2canvas(document.body).then(function(canvas) {
      document.body.appendChild(canvas);
  });
  }
}
