import * as AutoKana from 'vanilla-autokana';

document.addEventListener("DOMContentLoaded", function() {
  AutoKana.default.bind("#medium_name", "#medium_furigana");
});
