import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }

  addDev() {
    $("#textField").append(
      '<div class="skillsForm"><label >Developer&nbsp</label><input type="text" name="users[]"/></div>'
    )
  }
}

