import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="interact"
export default class extends Controller {
  connect() {
    const targets = ["#logo","#clothing"]
    targets.forEach(setup)
    function setup(item){
    const position = { x: 0, y: 0 }

    interact(item)
    .draggable({
      listeners: {
        start (event) {
          console.log(event.type, event.target)
        },
        move (event) {
          position.x += event.dx
          position.y += event.dy

          event.target.style.transform =
          `translate(${position.x}px, ${position.y}px)`
        },
      }
    })
    interact(item)
  .resizable({
    edges: { top: true, left: true, bottom: true, right: true },
    listeners: {
      move: function (event) {
        let { x, y } = event.target.dataset

        x = (parseFloat(x) || 0) + event.deltaRect.left
        y = (parseFloat(y) || 0) + event.deltaRect.top

        Object.assign(event.target.style, {
          width: `${event.rect.width}px`,
          height: `${event.rect.height}px`,
          transform: `translate(${x}px, ${y}px)`
        })

        Object.assign(event.target.dataset, { x, y })
      }
    }
  })

  }
  }
}
