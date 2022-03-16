//
//  StepModel.swift
//  FitnessApp
//
//  Created by Jannatun Nahar Papia  on 16/3/22.
//

import SwiftUI

//MARK: Steps Bar Graph Model and Sample Data

struct StepModel: Identifiable {
    
    var id = UUID().uuidString
    var value: CGFloat
    var key: String
    var color: Color = Color("purple")
    
}

var steps: [StepModel] = [

             StepModel(value: 500, key: "1-4 AM"),
             StepModel(value: 240, key: "5-8 AM", color: Color("Green")),
             StepModel(value: 350, key: "9-11 AM"),
             StepModel(value: 430, key: "12-4 PM", color: Color("Green")),
             StepModel(value: 690, key: "5-8 PM"),
             StepModel(value: 540, key: "9-12 PM", color: Color("Green")),
]
