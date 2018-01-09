// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function displayProductOrders(product) {
  // debugger;
  var order = "<br><b>Order(s): </b> "
  if (product.orders.length === 0) {
    order += "No orders yet";
  } else {
    for (const item of product.orders) {
      order += "<p>Order ID:" + item.id + "</p><p>Created At:" + item.created_at + "</p>";
    }
  }
  return order;
}
