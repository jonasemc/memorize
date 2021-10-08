//
//  ContentView.swift
//  Memorize
//
//  Created by Jonas on 21/09/21.
//

import SwiftUI

struct ContentView: View {
    let viewModel: EmojiMemoryGame
    
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(viewModel.cards)  { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit )
                    }
                }
            }
            .foregroundColor(.red)
        }
        .padding(.horizontal)
    }
}




struct CardView: View{
    let card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.faceParaCima{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else{
                shape.fill()
            }
        }
    }
}



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
        ContentView(viewModel: game)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

