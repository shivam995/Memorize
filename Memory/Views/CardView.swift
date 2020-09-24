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
    let cardStrokeLine: CGFloat = 2.0
    let fontScaleFactor: CGFloat = 0.50
    
    var card: Card<String>
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
     
    func body(for size: CGSize) -> some View {
 
            ZStack {
                TimerView(startAngle: Angle(degrees: 0-90), endAngle: Angle.degrees(110-90 ))
                    .padding(8)
                    .opacity(0.4)
                Text(card.content)
                    .font(Font.system(size: fontSize(for: size)))
            }
            .cardify(isFaceUp: card.isFaceUp)
//        }
    }
    
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.7
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game  = EmojiMemoryGame()
        game.choose(card: game.cards[0])
        return EmojiMemoryGameView(mGameViewModel: game)
    }
}

