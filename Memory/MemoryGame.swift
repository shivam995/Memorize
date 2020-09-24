//
//  MemoryGame.swift
//  Memory
//
//  Created by Shivam Jaiswal on 23/07/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable{
    var cards: Array<Card<CardContent>>
    var firstChosenCardIndex: Int?
    
    init(cardPairCount: Int, cardContentFactory: (Int) ->CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<cardPairCount {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1 ))
        }
    }
    /**
     handle behaviour on tapping
     business logic only
     */
    mutating func choose(card: Card<CardContent>) {
        print("choose card = \(card)")
        if let chosenIndex = cards.firstIndex(of: card) { //}, !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched  {
            if let alreadyChosenCardIndex = firstChosenCardIndex {
                if cards[alreadyChosenCardIndex].content == cards[chosenIndex].content {
                    //MARK:- mark both index matched and faceUp true
                    cards[chosenIndex].isMatched = true
                    cards[alreadyChosenCardIndex].isMatched = true
                }
                firstChosenCardIndex = nil
            }
            else {
                //MARK:- card did not matched, make all cards faceUp false
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                firstChosenCardIndex = chosenIndex
            }
            self.cards[chosenIndex].isFaceUp = true
        }
    }
    
}
