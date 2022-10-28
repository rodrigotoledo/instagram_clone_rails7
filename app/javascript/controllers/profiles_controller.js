import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  close(event) {
    let query = document.getElementById('query')
    let results = document.getElementById('results')
    results.innerHTML = ''
    query.value = ''
  }

  search(element){
    element.target.form.requestSubmit();
  }
}
