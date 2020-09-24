//
//  Card.swift
//  Memory
//
//  Created by Shivam Jaiswal on 28/07/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation

struct Card<CardContent>: Identifiable {
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: CardContent
    var id: Int
}

