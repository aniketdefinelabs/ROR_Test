// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

$(document).on('turbo:load', function() {
  $('.author-select').select2({
    placeholder: "Select authors",
    closeOnSelect: false
  });
});
