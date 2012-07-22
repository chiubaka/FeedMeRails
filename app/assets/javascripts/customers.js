# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(function() {
  if ($("#customers").length > 0) {
    setTimeout(updateCustomers, 5000);
  }
});

function updateCustomers() {
  var restaurant_id = $("#customers").attr("data-id");
  $.getScript("/customers.js?restaurant_id=" + restaurant_id );
  setTimeout(updateCustomers, 5000);
}
