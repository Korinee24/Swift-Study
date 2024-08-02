//
//  BottomTextView.swift
//  QuestionAnswer
//
//  Created by 김경완 on 8/2/24.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Preview: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
