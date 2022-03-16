//
//  FitnessStepsGraphView.swift
//  FitnessApp
//
//  Created by Jannatun Nahar Papia  on 17/3/22.
//

import SwiftUI

struct FitnessStepsGraphView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Steps by hours")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
       //     HStack(spacing: 20){//}
            
            //Bar Graph
            BarGraph(steps: steps)
            
            
        }
        .padding(.horizontal,20)
        .padding(.vertical, 25)
        .background{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.ultraThinMaterial)
        }
    }
}

struct FitnessStepsGraphView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Modifying for our usage
struct BarGraph: View {
    var steps: [StepModel]
    var body: some View {
        //Graph view
        GrapView()
            .padding(.top,20)
        
//        VStack(spacing: 20) {
//
//            HStack{
//                Text("Fasting History")
//                    .fontWeight(.bold)
//
//                Spacer()
//
//                Menu {
//
//                    Button("Month"){}
//                    Button("Year"){}
//                    Button("Day"){}
//
//
//                } label: {
//                    HStack(spacing: 4) {
//                        Text("this week")
//
//                        Image(systemName: "arrowtriangle.down.fill")
//                            .scaleEffect(0.7)
//                    }
//                    .font(.system(size: 14, weight: .bold))
//                    .foregroundColor(.gray)
//                }
//            }
//
//                HStack(spacing: 10) {
//                     Capsule()
//                        .fill(Color.blue)
//                        .frame(width: 20, height: 8)
//
//                    Text("steps")
//                        .font(.system(size: 14, weight: .bold))
//                        .foregroundColor(.gray)
//                }
//                .frame(maxWidth: .infinity, alignment: .leading)
//        }
//        .padding(.horizontal,20)
//        .background(Color.white)
//        .cornerRadius(20)
//        .padding(.top, 25)
    }
    
    @ViewBuilder
    func GrapView() -> some View {
        
        GeometryReader { proxy in
            ZStack {
                VStack (spacing: 0) {
                    ForEach(getGrapLines(), id: \.self) { line in
                        HStack (spacing: 8) {
                            Text("\(Int(line))")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .frame(height: 20)
                            
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(height: 1)
                        }
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        
                        //  Removing the text size....
                        .offset(y: -15)
                    }
                    
                }
                
                HStack {
                    ForEach(steps) { step in
                        VStack (spacing: 0) {
                       VStack(spacing: 5) {
                            
                            Capsule()
                                .fill(Color.green)
                            
                            Capsule()
                                .fill(Color.blue)
                        }
                        .frame(width: 8)
                        .frame(height: getBarHeight(point: step.value,
                                                    size: proxy.size))
                       
                        Text(step.key)
                        .font(.caption)
                        .frame(height: 25, alignment: .bottom)
                    }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    }
            }
                .padding(.leading, 30)

            }
                   
            .frame(maxWidth: .infinity,  maxHeight: .infinity,
                   alignment: .center)
        }
        // Fixed Height
        .frame(height: 190)
    }
    
    func  getBarHeight(point: CGFloat, size: CGSize) -> CGFloat {
        let max = getMax()
        
        // 25 text height
        //5 spacing ........
        
        let height = (point / max) * (size.height - 37)
        return height
    }
    // getting sample graph lines based on max value...
    
    func getGrapLines() -> [CGFloat] {
        
        let max = getMax()
        
        var lines: [CGFloat] = []
        lines.append(max)
        for index in 1...4 {
            //dividing the max by 4 and iterating as index for graph lines...
            let progress = max / 4
            lines.append(max - (progress * CGFloat(index)))
        }
        return lines
    }
    
    //Getting Max...
    func getMax() -> CGFloat {
        let max = steps.max { first, scnd in
            return scnd.value > first.value
        }?.value ?? 0
        return max
    }
    
}
