import { Controller } from "@hotwired/stimulus"
import { FilePondRails, FilePond } from 'filepond-rails'


import FilePondPluginImagePreview from 'filepond-plugin-image-preview'

FilePond.registerPlugin(
  FilePondPluginImagePreview,
)


window.FilePond = FilePond
window.FilePondRails = FilePondRails

export default class extends Controller {
  static targets = ['input'];

  connect() {
    const input = document.querySelector('.filepond');
    FilePondRails.create(input);
  }
}
