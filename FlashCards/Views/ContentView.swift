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
    var currentCard = listOfCards.randomElement()!
    
    
    
    
    
    
    
    
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
                Text("Check")
            })
            .buttonStyle(.borderedProminent)
            
            //Show the answer
            Text(currentCard.answer)
                .bold()
                .font(.title3)
                .italic()
                .multilineTextAlignment(.center)
            
            //Next question
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Next Question")
            })
            .buttonStyle(.borderedProminent)
        
        
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
