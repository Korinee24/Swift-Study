// Write your code below 🏦
struct SwiftBank {
  private let password: String
  //Deposit Balnce 
  private var balance: Double = 0
  static let depositBonusRate = 0.01

  init(initialDeposit: Double, password: String) {
    self.password = password
    makeDeposit(ofAmount: initialDeposit)
  }

  mutating func makeDeposit(ofAmount depositAmount: Double) {
    let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
    
    print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is $\(depositWithBonus)")

    self.balance += depositWithBonus
  }

  mutating func displayBalance(usingPassword password: String){
    if !isValid(password) {
      print("Error: Invalid password. Cannot retrieve balance.")
      return
    } 
    print("Your current balance is $\(balance)")
  }

  mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
    if !isValid(password) {
      print("Error: Invalid password. Cannot make withdrawal.")
    }

    print("Making a \(withdrawalAmount) withdrawal.")
    self.balance -= withdrawalAmount
  }

  private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    return deposit + (deposit * SwiftBank.depositBonusRate)
  }

  private func isValid(_ enteredPassword: String) -> Bool {
    return password == enteredPassword
  }

  private func displayLowBalanceMessage() {
    print("Your balance is under $100.")
  }

}

var myAccount = SwiftBank(initialDeposit: 500, password: "cola")
myAccount.makeDeposit(ofAmount: 50)
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "cola")
myAccount.displayBalance(usingPassword: "cola")
