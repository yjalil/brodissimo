import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="interact"
export default class extends Controller {
  connect() {
    const position = { x: 0, y: 0 }
    const standardWidth = 140
    const standardHeight = 70
    let logoWidth = document.getElementById("logo-width")
    let logoHeight = document.getElementById("logo-height")
    let logox = document.getElementById("logo-x")
    let logoy = document.getElementById("logo-y")
    let clothing= document.getElementById("clothing")
    let logo= document.getElementById("logo")
    let logoZone= document.getElementById("logo-zone")

    // console.log(clothing.offsetWidth)
    // console.log(clothing.offsetHeight)
    // console.log(logo.offsetWidth)
    // console.log(logo.offsetHeight)
    interact('#logo')
    .draggable({
      listeners: {
        start (event) {
          // console.log(event.type, event.target)
        },
        move (event) {
          position.x += event.dx
          position.y += event.dy
          // console.log(position)
          logox.value = Math.round(( logoZone.offsetLeft + position.x )*standardHeight/clothing.offsetHeight)
          logoy.value = Math.round((logoZone.offsetTop + position.y )*standardWidth/clothing.offsetWidth)
          // console.log(position.x+logoZone.offsetLeft)
          event.target.style.transform =
          `translate(${position.x}px, ${position.y}px)`
        },
      },
      modifiers: [
        interact.modifiers.restrictRect({
          restriction: '#logo-zone',
        }),
      ],

    })
    .resizable({
      edges: { top: true, left: true, bottom: true, right: true },
      modifiers: [
        interact.modifiers.aspectRatio({
          // make sure the width is always double the height
          ratio: 'preserve',
        }),
        interact.modifiers.restrictSize({ max: '#logo-zone' }),
      ],
      listeners: {
        move: function (event) {
          let { x, y } = event.target.dataset
          logoWidth.value = Math.round(logo.offsetWidth * standardWidth / clothing.offsetWidth)
          logoHeight.value = Math.round(logo.offsetHeight * standardHeight / clothing.offsetHeight)
          let event2 = new Event('change');
          logoWidth.dispatchEvent(event2);
          logoHeight.dispatchEvent(event2);

          x = (parseFloat(x) || 0) + event.deltaRect.left
          y = (parseFloat(y) || 0) + event.deltaRect.top
          // console.log(logoWidth)
          Object.assign(event.target.style, {
            width: `${event.rect.width}px`,
            height: `${event.rect.height}px`,
            transform: `translate(${x}px, ${y}px)`
          })

          Object.assign(event.target.dataset, { x, y })
        }
      }
    })
    interact('#logo-zone').dropzone({
      accept: '#logo',
    });
  }
}
