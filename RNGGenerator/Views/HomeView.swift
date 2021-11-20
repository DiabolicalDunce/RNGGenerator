//
//  HomeView.swift
//  RNGGenerator
//
//  Created by Jonathan Lau on 11/18/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Please select a mf thing")
            .padding()
        
        NavigationView {
            TabView {
                CoinFlipView()
                    .tabItem {
                        VStack {
                            Text("Coin")
                            Image(systemName: "circle.fill")
                        }
                    }
                
                DieRollerView()
                    .tabItem {
                        VStack {
                            Text("Die")
                            Image(systemName: "die.face.6")
                        }
                    }
                
                NumberGeneratorView()
                    .tabItem {
                        VStack {
                            Text("RNG")
                            Image(systemName: "questionmark.circle.fill")
                        }
                    }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
