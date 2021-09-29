//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jonas on 28/09/21.
//

import SwiftUI

class EmojiMemoryGame{
    private var model: MemoryGame<String> = MemoryGame<String>(numeroDeParesCartas: 4)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
