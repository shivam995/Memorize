//
//  CardView.swift
//  Memory
//
//  Created by Shivam Jaiswal on 27/07/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import SwiftUI

struct CardView: View {
    // MARK:- constants here
    let cardCornerRadius: CGFloat = 10.0
    let cardStrokeLine: CGFloat = 3.0
    let fontScaleFactor: CGFloat = 0.75
    
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ZStack {
            if self.card.isFaceUp {
                RoundedRectangle(cornerRadius: self.cardCornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: self.cardCornerRadius).stroke(lineWidth: self.cardStrokeLine)
                Text(self.card.content)
            }else {
                RoundedRectangle(cornerRadius: self.cardCornerRadius).fill()
            }
        }
        .font(Font.system(size: min(size.width, size.width) * self.fontScaleFactor))
    }
}

