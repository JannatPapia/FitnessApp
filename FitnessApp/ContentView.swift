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
                    
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
