//
//  ContentView.swift
//  Magic 8 Ball (Final Project)
//
//  Created by Student on 11/18/21.
//
// !! I used code from Roll the dice to create the flip !! //
import SwiftUI
struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    @State private var enterQuestion = ""
    @State private var replyToQuestion = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Go to the How To Play Page to learn how to play!")
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                Image("image\(randomValue)")
                    .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .rotationEffect(.degrees(rotation))
                    .rotation3DEffect(.degrees(rotation), axis: (x: 8, y: 5, z: 0))
                    .padding()
                    .onTapGesture {
                        yesOrNo(times: 2)
                        withAnimation(.interpolatingSpring(stiffness: 10, damping: 10)) {
                            rotation += 360
                        }
                    }
                Button("Clear Responses") {
                    enterQuestion = ""
                    replyToQuestion = ""
                }
                .padding()
                .padding()
                TextField("Enter Question Here", text: $enterQuestion)
                    .multilineTextAlignment(.center)
                Text("\(replyToQuestion)")
                // delete this if doesnt work
                Spacer()
                NavigationLink("How To Play", destination: Instructions(phrase: "Instructions"))
            }
            .navigationTitle("Magic 8 Ball")
        }
    }
    func yesOrNo (times:Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                randomValue = Int.random(in: 1...2)
                yesOrNo(times: times - 1)
            }
        }
        if randomValue == 1 {
            replyToQuestion = "No"
            // if it doesnt work put it enterQuestion
        } else {
            replyToQuestion = "Yes"
            // if it doesnt work put it enterQuestion
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
