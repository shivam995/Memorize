//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Shivam Jaiswal on 23/07/20.
//  Copyright © 2020 Learning. All rights reserved.
//
import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createGame()
    
    
    var cards: Array<Card<String>> {
        model.cards
    }
    
    func choose(card: Card<String>) {
        model.choose(card: card)
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
