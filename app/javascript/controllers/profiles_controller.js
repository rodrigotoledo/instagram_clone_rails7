import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  close(event) {
    let search = document.getElementById('search')
    let results = document.getElementById('results')
    results.innerHTML = ''
    search.value = ''
  }

  search(element){
    fetch('/profiles/search/?query='+element.target.value, {
      method: 'GET',
      headers: {
        Accept: 'text/vnd.turbo-stream.html'
      }
    }).then(r => r.text())
    .then(html => Turbo.renderStreamMessage(html))
  }
}
