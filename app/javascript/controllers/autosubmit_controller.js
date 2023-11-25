import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["submitbutton"]
    connect() {
        console.log("Autosubmit controller connected...")
        this.submitbuttonTarget.hidden = true
    }

    submit() {
        clearTimeout(this.timeout)
        this.timeout = setTimeout(() => {
            this.submitbuttonTarget.click()
        }, 500)
    }
}