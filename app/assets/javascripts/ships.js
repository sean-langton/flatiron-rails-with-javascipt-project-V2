class Ship {
  constructor(id,name,size,maxCargo,maxDistance) {
    this.id = id
    this.name = name
    this.size = size
    this.maxCargo = maxCargo
    this.maxDistance = maxDistance
  }
};

class Voyage {
  constructor(id,dep_port,arr_port,distance,cargo) {
    this.id = id
    this.dep_port = dep_port
    this.arr_port = arr_port
    this.distance = distance
    this.cargo = cargo
  }
};

$( document ).on('turbolinks:load', () => {
    $.get(window.location.pathname+".json", (data) => {
      debugger;
      let newShip = new Ship(data["id"],data["name"],data["size"],data["max_cargo"],data["max_distance"])
      $("#shipName").append(newShip["name"])
      $("#size").append(newShip["size"])
      $("#maxCargo").append(newShip["maxCargo"])
      $("#maxDistance").append(newShip["maxDistance"])
      data["voyages"].forEach( (voyage) => {
        let newVoyage = new Voyage(voyage["id"],voyage["dep_port"],voyage["arr_port"],voyage["cargo"],voyage["distance"])
        if (newVoyage["dep_port"] !== null) {
          $("#voyages").append('<tr><td>'+ newVoyage["dep_port"] + '</td><td>' + newVoyage["arr_port"] + '</td><td>' + newVoyage["cargo"] +'</td><td>' + newVoyage["distance"] + '</td></tr>')
        };
      });
    });
  });
