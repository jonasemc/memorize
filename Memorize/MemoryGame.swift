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
    
    init(numeroDeParesCartas: Int){
        cards = Array<Card>()
        //add numeroDeParesCartas x2
        for parIndex in 0..<numeroDeParesCartas {
            cards.append(Card(faceParaCima: false, combinacao: false, content: <#T##CardContent#>))
            cards.append(Card(faceParaCima: false, combinacao: false, content: <#T##CardContent#>))
        }
    }
    
    struct Card{
        var faceParaCima: Bool
        var combinacao: Bool
        var content: CardContent
    }
}
