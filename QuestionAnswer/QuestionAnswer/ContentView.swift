//
//  ContentView.swift
//  QuestionAnswer
//
//  Created by 김경완 on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    //Delcare instance
    let question = Question(questionText: "What was the first computer bug?", pssibleAnswer: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2)
    
    //Define constant variable for colors
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                //Question Number
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                //Question
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                //Spacer
                Spacer()
                //Answer Start
                HStack{
                    //Answer button refactor 2
                    ForEach(0..<question.pssibleAnswer.count) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.pssibleAnswer[answerIndex])")
                          mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }) {
                            ChoiceTextView(choiceText: question.pssibleAnswer[answerIndex])
                        }
                    }
                }
            }
        }
        .foregroundColor(.white) // Text Color Set To White
    }
}

#Preview {
    ContentView()
}

