//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Shivam Jaiswal on 23/07/20.
//  Copyright © 2020 Learning. All rights reserved.
//
import SwiftUI

class EmojiMemoryGame {
    private var mData: MemoryGame<String> = createGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        mData.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
//        let chosenIndex = self.indexOf(of: card)
//        var chosenCard = self.mData[chosenIndex]
//
//        chosenCard.isFaceUp = !chosenCard .isFaceUp
    }
    
    static func createGame() -> MemoryGame<String> {
        let emojis = ["😈","👻","✈️"]
        var gameArray = MemoryGame<String>(cardPairCount: emojis.count){ pairIndex in
            return emojis[pairIndex]
        }
        gameArray.cards.shuffle()
        return gameArray
    }
}
