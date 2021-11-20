//
//  DieView.swift
//  RNGGenerator
//
//  Created by Jonathan Lau on 11/19/21.
//

import SwiftUI

struct DieView: View {
    
    var dieState: [Int]
    
    var body: some View {
        
        VStack(spacing: 50) {
            Text("You rolled: ")
                .bold()
                .font(.system(size: 35))
            
            
            HStack {
                ForEach(0..<dieState.count, id: \.self) { index in
                    
                    VStack {
                        Text("\(dieState[index])")
                            .bold()
                        
                        Image(systemName: "die.face.\(dieState[index])")
                            .resizable()
                            .scaledToFit()
                        
                    }
                    
                    
                }
            }
        }
        
        
        
        
        
    }
}

struct DieView_Previews: PreviewProvider {
    static var previews: some View {
        DieView(dieState: [1])
    }
}
