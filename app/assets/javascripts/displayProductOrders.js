function displayProductOrders(product) {
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
