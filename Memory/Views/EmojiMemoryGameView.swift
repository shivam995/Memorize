//
//  EmojiMemoryGameView.swift
//  Memory
//
//  Created by Shivam Jaiswal on 28/05/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject  var mGameViewModel: EmojiMemoryGame
    var body: some View {
        Grid(mGameViewModel.cards) { card in
            CardView(card: card ).onTapGesture {
                self.mGameViewModel.choose(card: card)
            }
        .padding(5)
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}
