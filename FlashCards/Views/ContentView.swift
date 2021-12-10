//
//  ContentView.swift
//  FlashCards
//
//  Created by Russell Gordon on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            //Show the question
            Text("What's the \"powerhouse\" of a cell?")
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
            
            //Show the question
            Text("Mitochondria")
                .font(.title3)
                .multilineTextAlignment(.center)
            
            //Check answer
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
