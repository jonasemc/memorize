//
//  ContentView.swift
//  Memorize
//
//  Created by Jonas on 21/09/21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🏎", "🛵", "🚀", "🛳", "🚕", "🚙", "🚓", "🚑", "🚛", "🚜", "🚡", "🚠", "🚅", "🚂", "✈️", "🛸", "🏍", "🚁", "🛶", "⛵️", "🚊", "🛻", "🛴", "🚲"]
    
    @State var emojiCount = 20
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self)  { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit )
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack{
                remover
                Spacer()
                adicionar
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    var remover: some View{
        Button {
            if emojiCount > 1{
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var adicionar: some View{
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}




struct CardView: View{
    var content: String
    @State var faceParaCima: Bool = true
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if faceParaCima{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else{
                shape.fill()
            }
        }
        .onTapGesture {
            faceParaCima = !faceParaCima
        }
    }
}



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

