//
//  HomeScreen.swift
//  GuessingGame
//
//  Created by Salvarajah, Prajina on 2020-11-19.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
            
            List {
                NavigationLink(destination: MediumDifficulty()) {
                    
                    NavigationLinkContent (imageName: "easy", mainText: "Easy Mode", subText: "Even children can do this")
                }
                NavigationLink(destination: hardDifficulty()) {
                    
                    NavigationLinkContent (imageName: "medium", mainText: "Medium Mode", subText: "Even children can do this")
            }
        }

    }


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
}
