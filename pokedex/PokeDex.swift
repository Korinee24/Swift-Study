// Write your code below 🤾‍♂️ 
class Pokemon {
  //Declare variables which I need
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]
  //Init!
  init(num: Int, name: String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  //Declare new method
  func displayInfo() {
    print("No.      #\(num)")
    print("Name      \(name)")
    print("Type      \(type)")
    print("Abilities \(ability)")
    print("-------------------------")
  }
}

//Delcare Gigantamax Class
class GigantamaxPokemon: Pokemon {
  var location = ""
  //New Init
  init(num: Int, name: String, type: [String], ability: [String], location: String) {
    self.location = location
      //When I run the program, it shows erros as "super.init" is not called
  //Declare super init
  super.init(num: num, name: name, type: type, ability: ability)
  }

  override func displayInfo() {
    print("No.      #\(num)")
    print("Name      \(name)")
    print("Type      \(type)")
    print("Abilities \(ability)")
    print("Location  \(location)")
    print("-------------------------")
  }

}

//Declare instances
var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

//Gigantamax Pokemon Instance
var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

//display information which we added
bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
charizard.displayInfo()

