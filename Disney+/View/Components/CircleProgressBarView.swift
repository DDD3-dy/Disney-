//
//  CircleProgressBarView.swift
//  Disney+
//
//  Created by Dylan Caetano on 15/06/2022.
//

import SwiftUI

struct CircleProgressBarView: View {
    
    let progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 35, height: 35)
                .foregroundColor(.white.opacity(0.8))
            Circle()
                .stroke(Color.white.opacity(0.2), lineWidth: 5.0)
            Circle()
                .trim(from: 0.0, to: 0.5)
                .stroke(AngularGradient(gradient: Gradient(
                    colors: [
                        Color.yellow,
                        Color.yellow,
                        Color.red,
                        Color.red,
                        Color.red,
                        Color.yellow
                
                    ]), center: .center), style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round
            ))
            Text(String(format: "%.1f",  progress))
                .fontWeight(.medium)
                .foregroundColor(Color.black)
        }
    }
}

struct CircleProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleProgressBarView(progress: 8.1)
            CircleProgressBarView(progress: 6)
            CircleProgressBarView(progress: 3)
        }
            .frame(width: 50, height: 50)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.blue)
    }
}
