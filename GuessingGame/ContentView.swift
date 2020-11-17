//
//  ContentView.swift
//  GuessingGame
//
//  Created by Salvarajah, Prajina on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    @State var userinput = ""
    @State var target = Int.random(in: 1...100)
    
    var checkingGuess: Int {
        
    }
    
    
    
    
    
    
    var body: some View {
        NavigationView{
            VStack {
                Form {
                    Section {
                        Text ("""
                    I'm thinking of a number between 1 and 100.
                    Guess what it is!
                    """)
                    }
                    Section {
                        TextField ("User Guess", text: $userinput)
                            .keyboardType(.decimalPad)
                    }
                    
                    Button("Submit Guess") {
                        // Check the guess
                    }
                    
                    Section {
                    Text("You guessed \(userinput) ")
                    }
                }.navigationBarTitle("Guessing Game")
                
                
            }
            
        }
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
