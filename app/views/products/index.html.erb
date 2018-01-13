<h1>Products</h1>
<% @products.each do |product| %>
  <h3><%= product.name %></h3>
  <div id="product-<%= product.id %>"><%= truncate(product.description) %></div>
  <button class="js-more" data-id="<%= product.id %>">More Info</button>
  <ul id="product-<%= product.id %>-orders">
  </ul>
<% end %>

<script type="text/javascript" charset="utf-8">
$(function() {
  $(".js-more").on("click", function() {
    var id = $(this).data("id");
    $.get("/products/" + id + ".json", function(data) {
      var product = data;
      var inventoryText = "<strong>Available</strong>";
      if(product["inventory"] === 0){
        inventoryText = "<strong>Sold Out</strong>";
      }
      var descriptionText = "<p>" + product["description"] + "</p><p>" + inventoryText + "</p>";
      $("#product-" + id).html(descriptionText);
      var orders = product["orders"];
      var orderList = "";
      orders.forEach(function(order) {
        orderList += '<li class="js-order" data-id="' + order["id"] + '">' + order["id"] + ' - ' + order["created_at"] + '</li>';
      });
      $("#product-" + id + "-orders").html(orderList);
    });
  });
});
</script>
