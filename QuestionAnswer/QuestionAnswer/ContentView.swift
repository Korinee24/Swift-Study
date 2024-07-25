//
//  ContentView.swift
//  QuestionAnswer
//
//  Created by 김경완 on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    //Define constant variable for colors
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("What was the first computer bug?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    //Button 1
                    Button(
                    action: { print("Wrong Answer") },
                    label: {
                        Text("Ant")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                        }
                    );
                    //Button 2
                    Button(
                        action: { print("Wrong Answer") },
                        label: {
                            Text("Beetle")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
                        }
                    );
                    //Button 3
                    Button(
                        action: { print("Correct!") },
                        label: {
                            Text("Moth")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
                        }
                    );
                    Button(
                        action: { print("Wrong Answer") },
                        label: {
                            Text("Fly")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
                        }
                    );
                }
            }
        }
        .foregroundColor(.white) // Text Color Set To White
    }
}

#Preview {
    ContentView()
}
