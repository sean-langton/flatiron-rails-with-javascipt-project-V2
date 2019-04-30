$(function() {
$('form').submit(function(event) {
  //prevent form from submitting the default way
  debugger;
  event.preventDefault();
  const values = $(this).serialize();
  const newShip = $.post('/ships', values);
  newShip.done(function(data) {
    debugger;
    const ship = data;
    $('#shipName').text(data);
  });
  return;
});
});
