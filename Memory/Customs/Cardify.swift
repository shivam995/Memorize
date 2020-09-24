//
//  Cardify.swift
//  Memory
//
//  Created by Shivam Jaiswal on 21/09/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    let cardCornerRadius: CGFloat = 10.0
    let cardStrokeLine: CGFloat = 2.0
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: self.cardCornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: self.cardCornerRadius).stroke(lineWidth: self.cardStrokeLine)
               content
            }else {
                RoundedRectangle(cornerRadius: self.cardCornerRadius).fill()
            }
        }
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
