//
//  ProgressTest.swift
//  Test
//
//  Created by Arteezy on 3/3/22.
//

import SwiftUI

struct ProgressTest: View {
    
    
    var body: some View {
        VStack(alignment: .center){
            
            Text("Hello")
                .padding()
            
            ProgressBar(progress: 0.10)
                .frame(width: 150.0, height: 150.0)
                .padding(40.0)

            
        }
    }
}

struct ProgressBar: View {
    var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color.green)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.green)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)

            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
        }
    }
}
