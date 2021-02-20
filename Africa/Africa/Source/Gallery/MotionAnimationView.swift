//
//  MotionAnimationView.swift
//  Africa
//
//  Created by lapedro.veloso on 20/02/21.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: - PROPERTIES
    @State private var numberOfRandomCircles = Int.random(in: 10...16)
    
    @State private var isAnimating: Bool = false
    
    //MARK: - FUNCTIONS
    private func randomSize() -> CGFloat {
        CGFloat.random(in: 10...300)
    }
    
    private func randomScale() -> CGFloat {
        CGFloat.random(in: 0.1...2)
    }
    
    private func randomPosition(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    
    
    private func randomSpeed() -> Double {
        Double.random(in: 0.025...1.0)
    }
    
    private func randomDelay() -> Double {
        Double.random(in: 0...2)
    }
    
    //MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0 ..< numberOfRandomCircles, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(x: randomPosition(max: geometry.size.width),
                                  y: randomPosition(max: geometry.size.height))
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }
            } //: ZSTACK
            .drawingGroup()
        } //: GEOMETRY
    }
}

// MARK: - PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
