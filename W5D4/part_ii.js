//Phase 1

function titleize(arr, callback) {
  let titleized = arr.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
}
titleize(["Mary", "Brian", "Leo"]), (arr) => {
  arr.forEach(name => console.log(name));
};

//Phase 2

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = () => {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = () => {
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = (trick) => {
  this.tricks.push(trick);
};

Elephant.prototype.play = () => {
  trickIndex = Math.ceil(8 / this.height);
  console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
};

//Phase 3

Elephant.paradeHelper = (elephant) => {
  console.log(`${elephant.name} is trotting by!`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


//Phase 4

function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
}
