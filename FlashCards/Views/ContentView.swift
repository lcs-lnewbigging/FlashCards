//
//  ContentView.swift
//  FlashCards
//
//  Created by Russell Gordon on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
   
    //MARK: Stored Properties
    //Store the card ot work with
    //It is randomly selected for the list of cards
   @State var currentCard = listOfCards.randomElement()!
    
    // This cintrols wether the answer is visible
    @State var isAnswerShowing = false
    
    //MARK: Computed Properties
    var body: some View {
        ScrollView{
            //Show the question
            Text(currentCard.question)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Check Answer")
            })
            .buttonStyle(.borderedProminent)
        
                
            
            //Show the answer
            Text(currentCard.answer)
                .bold()
                .font(.title3)
                .italic()
                .multilineTextAlignment(.center)
                .opacity(isAnswerShowing ? 1.0 : 0.0)
                .padding(10)
            
            
            //Next question
            Button(action: {
               // get another question
                currentCard = listOfCards.randomElement()!
                print("Button was pressed")
            }, label: {
                Text("Next Question")
            })
            .buttonStyle(.borderedProminent)
            .opacity(isAnswerShowing ? 1.0 : 0.0)
        
        
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
