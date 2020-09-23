//
//  TimerView.swift
//  Memory
//
//  Created by Shivam Jaiswal on 20/09/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import SwiftUI

struct TimerView: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool = true
    
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngle.radians)),
            y: center.y + radius * cos(CGFloat(startAngle.radians)))
        
        path.move(to: center)
        path.addLine(to: start)
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        return path
    }
}
