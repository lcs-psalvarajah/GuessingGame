//
//  NavigationLinkContent.swift
//  GuessingGame
//
//  Created by Salvarajah, Prajina on 2020-11-18.
//

import SwiftUI

struct NavigationLinkContent: View {
    
    //Define porperties
    var imageName: String
    var mainText: String
    var subText: String
    
    var body: some View {
       
        HStack {
            
            Image(imageName)
                .resizable()
                .frame(width: 100.0, height: 80.0)
            
            
            VStack(alignment: .leading) {
                
                //Provide the label for the navigation link
                Text(mainText)
                    .font(.headline)
                
                Text(subText)
                    .font(.caption)
                
        }
            
        }
      }
}

struct NavigationLinkContent_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkContent(imageName:"bus", mainText:"I'm passionate about...", subText:"Better transportation")
    }
}
