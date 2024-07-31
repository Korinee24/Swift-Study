//Creating function for getting user input
func getUserChoice(userInput: String) -> String {
  //create if statement for checking user input
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  } else { // if user entered wrong input, it shows this message
    return "You can only enter rock, paper, or scissors. Try agin."
  }
}

//Declare function for getting computer input
func getComputerChoice() -> String {
  //getting number using random function
  let randomNumber = Int.random(in: 0...2)
  //declare swithc for changing value 
  switch randomNumber {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "Something went wrong"
  }
}

//final function for checking who won from the game
func determineWinner(_ userChoice: String,_ compChoice: String) -> String {
  //declare variable with default value
  var decision = "It's a tie"
  //declare switch for comparing user input and computer input
  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won"
      } else if compChoice  == "scissors" {
        decision = "The user won"
      }
    case "paper":
      if compChoice == "rock" {
        decision = "The user won"
      } else if compChoice == "scissors" {
        decision = "The computer won"
      }
    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won"
      } else if compChoice == "paper" {
        decision = "The user won"
      }
    default:
      print("Something went wrong")
  }

  return decision
}

//adding user input to constant variable
let userchoice = getUserChoice(userInput: "paper")
//adding computer input to contant variable
let compchoice = getComputerChoice()

//print user input
print("You threw \(userchoice)")
//print computer input
print("The computer threw \(compchoice)")
//print who won!
print(determineWinner(userchoice, compchoice))
