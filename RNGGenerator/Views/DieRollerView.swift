//
//  DieRollerView.swift
//  RNGGenerator
//
//  Created by Jonathan Lau on 11/18/21.
//


// GOALS:
// 1.) Let the user select how many die they want to roll
// 2.) When the user picks a number, roll that many die
// 3.) Store the die roll results in an array
// 4.) Use a Text view to tell user the results of their die rolls e.x("You rolled a 2, 4, 6, 3")
// 5.) Produce a horizontal line of the die results as die images


import SwiftUI

struct DieRollerView: View {
    
    @EnvironmentObject var model: ContentModel
    @State var dieState: [Int]?
    @State var numOfDie = 1
    
    var body: some View {
        // TODO: Let the user roll many die and show the full results as a line of result die (COMPLETED)
        // TODO: Attempt animation of die by displaying random die faces over time period
        
        VStack() {
            
            
            if dieState != nil {
                
                DieView(dieState: dieState!)
                
            }
            
            //Set a picker here
            Picker("Please choose how many dice you wish to roll", selection: $numOfDie) {
                ForEach(1..<11, id: \.self) {
                    Text("\($0)")
                        .tag($0)
                    
                }
            }
            .pickerStyle(.wheel)
            
            
            
            Button {
                dieState = model.clearDice()
                dieState = model.DiceRoll(numOfDie) // Set dieState to array of die roll results #numOfDie amount of times
            } label: {
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.cyan)
                        .frame(height: 40)
                    
                    
                    Text("Roll some die!")
                        .bold()
                        .foregroundColor(.white)
                }
                .cornerRadius(15)
                .shadow(radius: 5)
                
                
            }
            .foregroundColor(.black)
            
        }
        
        
    }
}

struct DieRollerView_Previews: PreviewProvider {
    static var previews: some View {
        DieRollerView(dieState: [1])
    }
}
