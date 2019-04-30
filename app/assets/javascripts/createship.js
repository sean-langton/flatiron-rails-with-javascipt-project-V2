$(function() {
$('form').submit(function(event) {
  //prevent form from submitting the default way
  debugger;
  event.preventDefault();
  const values = $(this).serialize();
  const newShip = $.post('/ships', values);
  newShip.done( (data) => {
    if (data["id"] > 0) {
      $('#shipMessage').text("Ship Created Successfully")
      $('#shipName').text(data["name"]);
      $('#shipSize').text(data["size"]);
      $('#shipCargo').text(data["max_cargo"]);
      $('#shipDistance').text(data["max_distance"]);
    } else {
      $('#shipMessage').text("Ship Creation Failed")
      $('#shipName').text(data);
    };
  });
  return;
});
});
