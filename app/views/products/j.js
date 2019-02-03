$.get("/products/" + id + ".json", function(data) {
    var product = data["product"];
    var inventoryText = "<strong>Available</strong>";

    if ( product["inventory"] === 0 ) {
      inventoryText = "<strong>Sold Out</strong>";
    }

    var descriptionText = "<p>" + product["description"] + "</p><p>" + inventoryText + "</p>";

    $("#product-" + id).html(descriptionText);

    var orders = product["orders"];
    var orderList = "";
    orders.forEach(function(order) {
      orderList += '<li class="js-order" data-id="' + order["id"] + '">' + order["id"] + ' - ' + order["created_at"];
      orderList += ' <br>Products:<ol>';
      products = order["products"];
      products.forEach(function(prod) {
        orderList += '<li>' + prod["name"] + '</li>';
      });
      orderList += '</ol></li>';

      $("#product-" + id + "-orders").html(orderList);
    });
});