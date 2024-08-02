//
//  QuestionView.swift
//  QuestionAnswer
//
//  Created by 김경완 on 8/2/24.
//
import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswer.count) { answerIndex in
                    Button {
                        viewModel.makeGuess(atIndex: answerIndex)
                        print("Tapped on option with the text: \(question.possibleAnswer[answerIndex])")
                    } label: {
                        ChoiceTextView(choiceText: question.possibleAnswer[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}

