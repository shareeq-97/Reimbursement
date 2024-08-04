// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener('DOMContentLoaded', function() {
  // Hide flash messages after 10 seconds
  setTimeout(function() {
    var flashMessages = document.querySelectorAll('.flash');
    flashMessages.forEach(function(flash) {
      flash.style.display = 'none';
    });
  }, 10000);
});
