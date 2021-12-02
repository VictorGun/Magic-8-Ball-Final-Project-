//
//  Instructions.swift
//  Magic 8 Ball (Final Project)
//
//  Created by Student on 11/18/21.
//

import SwiftUI

struct Instructions: View {
    let phrase : String
    var body: some View {
        VStack {
            Text(phrase)
                .font(.title)
                .padding()
            
            
            Text("Type your question, and click on the Magic 8 Ball to recieve your answer! Click on the Clear Response Button to Clear Your Answer!")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                
        }
        .navigationTitle("How To Play!")
    }
}

struct Instructions_Previews: PreviewProvider {
    static var previews: some View {
        Instructions(phrase: "How to Play")
    }
}
