//
//  MemoryGame.swift
//  Memorize
//
//  Created by Jonas on 28/09/21.
//

import Foundation

struct MemoryGame<CardContent>{
    private(set) var cards: Array<Card>
    
    func escolha(_ card: Card){
        
    }
    
    init (numeroDeParesCartas: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()

        for parIndex in 0..<numeroDeParesCartas {
            let content = createCardContent(parIndex)
            cards.append(Card(content: content, id: parIndex*2))
            cards.append(Card(content: content, id: parIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var faceParaCima: Bool = false
        var combinacao: Bool = false
        var content: CardContent
        var id: Int
    }
}
