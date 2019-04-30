class League {
  constructor(id,name,numOfFleets) {
    this.id = id
    this.name = name
    this.numOfFleets = numOfFleets
  }
};

$( document ).on('turbolinks:load', () => {
    $.get("/leagues.json", (data) => {
    data.forEach( (league) => {
      let newFleet = new League(league["id"],league["name"],league["num_of_fleets"])
      let fleetLink = newFleet["name"].link(window.location.protocol + "//" + window.location.host + "/leagues/" + newFleet["id"])
      $("#js").append('<tr><td>'+ fleetLink + '</td><td>' + newFleet["numOfFleets"] + '</tr>')
    });
    });
  });
