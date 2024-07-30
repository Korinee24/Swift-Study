var englishText = "this is a secret message"
//Morse Code Text
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-. -.-.--"

// Add your code below 🤫

//Dictionary code with String: String types
var letterToMorse = [
 "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--"
]

var morseText = ""

//Create for - in loop 
for element in englishText {
  if let morseChar = letterToMorse["\(element)"]{
    morseText += morseChar + " "
  } else {
    morseText += "   "
  }
}

//check morse Code
print(morseText)

//Decode variables
var decodedMessage = ""
var morseCodeArray = [String] ()
var currMorse = ""

//Create for-in loop for decoding
for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
   //use switch for adding spaces
    switch currMorse {
      case "":
        currMorse += " "
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}

//adding currMorse to morseCodeArray 
morseCodeArray.append(currMorse)

//Create new dictionary with empty data
var morseToLetter: [String: String] = [:]

//iterating key and value from letterTomorse
for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

//new iterating morseCodeArray for decoding
for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  } else {
    decodedMessage += " "
  }
}

//printing decoded message
 print(decodedMessage)

