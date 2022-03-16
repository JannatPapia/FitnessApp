//
//  ContentView.swift
//  FitnessApp
//
//  Created by Jannatun Nahar Papia  on 16/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        HomeView()
        }
        .frame(maxWidth: .infinity)
        .background{
            ZStack{
                VStack{
                    Circle()
                        .fill(Color("Green"))
                        .scaleEffect(0.6)
                        .offset(x: 20)
                        .blur(radius: 120)
                    
                    Circle()
                        .fill(Color("Red"))
                        .scaleEffect(0.6, anchor: .leading)
                        .offset(y: -20)
                        .blur(radius: 120)
                }
                Rectangle()
                    .fill(.ultraThinMaterial)
            }
            .ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
