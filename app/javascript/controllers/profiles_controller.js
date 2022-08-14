import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  close(event) {
    let search = document.getElementById('search')
    let search_box_results = document.getElementById('search_box_results')
    search_box_results.innerHTML = ''
    search.value = ''
  }
}
