$(function() {
  $(".js-more").on("click", function() {
    var id = $(this).data("id");
    $.get("/products/" + id + ".json", function(product) {
      var inventoryText = "<strong>Available</strong>";
      debugger
      if(product["inventory"] === 0){
        inventoryText = "<strong>Sold Out</strong>";
      }
      var descriptionText = "<p>" + product["description"] + "</p><p>" + inventoryText + "</p>";
      $("#product-" + id).html(descriptionText);
    });
  });
});
