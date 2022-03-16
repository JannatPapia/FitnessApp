//
//  RingView.swift
//  FitnessApp
//
//  Created by Jannatun Nahar Papia  on 16/3/22.
//

import SwiftUI

//MARK: Progress Ring Model and Sample Data
struct RingModel: Identifiable{
    var id = UUID().uuidString
    var progress: CGFloat
    var value: String
    var keyIcon: String
    var keyColor: Color
    var isText: Bool = false
}

var rings: [RingModel] = [
     
    RingModel(progress: 72, value: "Steps", keyIcon: "figure.walk", keyColor: Color("Green")),
    RingModel(progress: 36, value: "Calories", keyIcon: "flame.fill", keyColor: Color("Red")),
    RingModel(progress: 91, value: "Sleep time", keyIcon: "😴", keyColor: Color("Purple"), isText: true)
]
