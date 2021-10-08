//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jonas on 28/09/21.
//

import SwiftUI

class EmojiMemoryGame{
    
    static let emojis = ["🏎", "🛵", "🚀", "🛳", "🚕", "🚙", "🚓", "🚑", "🚛", "🚜", "🚡", "🚠", "🚅", "🚂", "✈️", "🛸", "🏍", "🚁", "🛶", "⛵️", "🚊", "🛻", "🛴", "🚲"]
    
    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numeroDeParesCartas: 4) {parIndex in
            emojis[parIndex]
        }
    }
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    
    var cards: Array<MemoryGame<String>.Card> {
         model.cards
    }
}
