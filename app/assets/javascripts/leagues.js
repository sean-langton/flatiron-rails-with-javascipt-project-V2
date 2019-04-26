class League {
  constructor(id,name,numOfFleets) {
    this.id = id
    this.name = name
    this.numOfFleets = numOfFleets
  }
};

$(function() {
    $.get("/leagues.json", function(data) {
    data.forEach(function (league) {
      let newFleet = new League(league["id"],league["name"],league["num_of_fleets"])
      let fleetLink = newFleet["name"].link(window.location.protocol + "//" + window.location.host + "/leagues/" + newFleet["id"])
      $("#js").append('<tr><td>'+ fleetLink + '</td><td>' + newFleet["numOfFleets"] + '</tr>')
    });
    });
  });
