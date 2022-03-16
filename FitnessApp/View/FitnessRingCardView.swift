//
//  FitnessRingCardView.swift
//  FitnessApp
//
//  Created by Jannatun Nahar Papia  on 17/3/22.
//

import SwiftUI

struct FitnessRingCardView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Progress")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 20){
                
                //Progress Ring
                ZStack{
                ForEach(rings.indices, id: \.self) { index in
                    ZStack{
                    Circle()
                        .stroke(.gray.opacity(0.3), lineWidth: 10)
                    
                    Circle()
                            .trim(from: 0, to: rings[index].progress / 100)
                        .stroke(rings[index].keyColor,style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                        .rotationEffect(.init(degrees: -90.0))
                }
                .padding(CGFloat(index) * 16)
            }
        }
        .frame(width: 130, height: 130)
    }
    }
    }
}

struct FitnessRingCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
