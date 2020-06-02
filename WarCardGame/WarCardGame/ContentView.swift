//
//  ContentView.swift
//  WarCardGame
//
//  Created by TC on 02/06/2020.
//  Copyright © 2020 TC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var random1 = 2
    @State private var random2 = 2
    
    @State private var playerScore = 0
    @State private var compScore = 0
    
    var body: some View {
        
        ZStack{
            Image("gradient")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                Text("Card War Game")
                    .bold()
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                Spacer()
                
                HStack{
                    Image("card" + String(random1))
                    Image("card" + String(random2))
                }
                
                Spacer()
                
                Button(action: {
                    //generates random card
                    self.random1 = Int.random(in: 2...14)
                    self.random2 = Int.random(in: 2...14)
                    
                    //score updating
                    if self.random1 > self.random2 {
                        self.playerScore += 1
                    }
                    else if self.random2 > self.random1 {
                        self.compScore += 1
                    }
                }){
                    Text("Deal")
                        .bold()
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
                HStack{
                    VStack{
                        Text("Player:")
                        .bold()
                        .padding(.bottom,10)
                        Text(String(playerScore))
                    }
                    .padding(.leading, 30)
                    Spacer()
                    VStack{
                        Text("Computer:")
                        .bold()
                        .padding(.bottom,10)
                        Text(String(compScore))
                    }
                    .padding(.trailing, 30)
                    
                }
                
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
