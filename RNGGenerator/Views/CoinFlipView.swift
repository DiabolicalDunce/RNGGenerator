//
//  CoinFlipView.swift
//  RNGGenerator
//
//  Created by Jonathan Lau on 11/18/21.
//

import SwiftUI

struct CoinFlipView: View {
    
    @EnvironmentObject var model: ContentModel
    @State var coinFace = "heads"
    
    var body: some View {
        // TODO: Let user roll coin multiple times and show the coin face results for each one side by side
        // TODO: Animate coin flip 
        
        VStack() {
            Text("You rolled \(coinFace)")
                .padding()
            
            Button {
                
                
                model.CoinFlip()
                
                if model.coin.rng == 1 {
                    coinFace = "heads"
                }
                else {
                    coinFace = "tails"
                }
                
            } label: {
                Image(coinFace)
            }
            //.rotation3DEffect(coinFace == "heads" ? Angle(degrees: 180) : Angle(degrees: 0), axis: (x: 10, y: 0, z: 0))
            //.animation(.default, value: coinFace)
            Spacer()
        }
        
        

    }
}

struct CoinFlipView_Previews: PreviewProvider {
    static var previews: some View {
        CoinFlipView()
            .environmentObject(ContentModel())
    }
}
