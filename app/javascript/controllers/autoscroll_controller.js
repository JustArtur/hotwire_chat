import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autoscroll"
export default class extends Controller {
  connect() {
    const messages = document.getElementById('messages');
    messages.addEventListener('DOMNodeInserted', this.autoScroll);
    this.autoScroll('messages');
  }

  autoScroll() {
    const messages = document.getElementById('messages');
    messages.scrollTop = messages.scrollHeight - messages.clientHeight
  }
}
