//
//  ContentView.swift
//  GuessingGame
//
//  Created by Salvarajah, Prajina on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    //the guess made by the user
    @State private var userinput = ""
    
    // the number that the user should guess
    @State private var target = Int.random(in: 1...100)
    // feeback to the user
    @State private var feedback = ""
    
    // pick the difficulty
    @State private var typeOfDifficulty = 2
    
    //
    @State private var gameOver = true
    
    
    let typeOfDifficulties = [10, 100, 1000]
    
    var body: some View {
        NavigationView{
            VStack {
                Text ("Guessing Game")
                    .font(.title)
                    .padding(.bottom)
                
                Section (header: Text("Easy, Medium, or Hard?"))
               {
                   Picker("Choose the Difficulty", selection:
                           $typeOfDifficulty) {
                       ForEach (0 ..< typeOfDifficulties.count) {
                           Text("\(self.typeOfDifficulties[$0])")
                       }
                   }
                   .pickerStyle(SegmentedPickerStyle())
               }
                
                Text (" I'm thinking of a number between 1 and 100. ")
                
                Text ("Guess what it is!")
                
                TextField ("User Guess", text: $userinput)
                    .keyboardType(.decimalPad)
                
                
                Button("Submit Guess") {
                    checkingGuess()
                    // Check the guess
                }
                .padding(.vertical)
                
                if userinput.count > 0 {
                    Text("You guessed \(userinput)")
                        .font(.title)
                        .padding(.bottom)
                    
                    Text("\(feedback)")
                        .font(.title)
                        .multilineTextAlignment(.center)
                }
                
                if gameOver == true {
                  
                    Button ("Reset Game") {
                        resetGame()
                    }
                }
               
            }
            
            
        }
        
    }
    

    
    
    func checkingGuess() {
        
        guard let guessInteger = Int(userinput)
        else {
            feedback = "Please provide an integer between 1 and 100"
            return
        }
        guard guessInteger > 0, guessInteger < 101 else {
            feedback = "Please provide an integer between 1 and 100"
            return
            
        }
        if guessInteger > target {
            feedback = "Guess lower"
        }
        else if guessInteger < target {
            feedback = "Guess higher"
        }
        else {
            feedback = "Congratulations! You guessed correctly!"
            gameOver = true
        }
        
    }
    
    func resetGame() {
        
        //Pick a new random number
        
        target = Int.random(in: 1...100)
        
        //Clear out the old feeback from prior round
        
        userinput = ""
        feedback = ""
        
        //The new game .. is not over
        gameOver = false
        
    }
    

}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
