import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// AutoKana の初期化
// document.addEventListener("DOMContentLoaded", () => {
//   const autoKana = new AutoKana('#medium_name', '#medium_furigana');
// });

export { application }
