//
//  NumberGeneratorView.swift
//  RNGGenerator
//
//  Created by Jonathan Lau on 11/18/21.
//

import SwiftUI
import Combine

struct NumberGeneratorView: View {
    
    @EnvironmentObject var model: ContentModel
    
    //@State var lowerNum = "0"
    //@State var upperNum = "0"
    @ObservedObject var number = ContentModel()
    
    
    
    
    var body: some View {
        // TODO: Create user input number field for lower and upper rng, select a random number from that
        
        NavigationView {
            VStack(spacing: 50) {
                
                Text("The number is \(model.number.chosenNumber)")
                
                ZStack {
                    Rectangle()
                        .border(.black, width: 2)
                        .foregroundColor(.white)
                        .frame(height: 40)
                    
                    TextField("Enter the first number", text:$number.lowerNumber)
                        .padding()
                }
                
                
                ZStack {
                    Rectangle()
                        .border(.black, width: 2)
                        .foregroundColor(.white)
                        .frame(height: 40)
                    
                    TextField("Enter the second number", text:$number.upperNumber)
                        .padding()
                }
                
                
                Button {
                    model.number.lowerRng = Int(number.lowerNumber)
                    model.number.upperRng = Int(number.upperNumber)
                    
                    model.NumberPicker()
                } label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.cyan)
                            .frame(height: 125)
                            .padding()
                        
                        Text("Pick me a random number!")
                            .bold()
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                    }
                }

                
            }
        }
        
        
        
    }
}

struct NumberGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        NumberGeneratorView()
    }
}
