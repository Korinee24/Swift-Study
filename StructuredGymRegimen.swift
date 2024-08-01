// Write your code below 💪
//Decalre struct Exercise
struct Exercise {
  //Declare needs
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int
  //init
  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

//Declare pushUp and dadding values
var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

//Declare new struct Regimen
struct Regimen {
  //Regimen Variables
  var dayOfWeek: String
  var exercises: [Exercise]
  //Init regimen
  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  //Declare method for printing values
  func printExercisePlan() {
    print("Today is \(dayOfWeek) and the plan is to:")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s)")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s'")
    }
  }  
}
//Declare monday exercise
var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises:[pushUp])

//Show result
mondayRegimen.printExercisePlan()

