//
//  ContentView.swift
//  Memorize
//
//  Created by Jonas on 21/09/21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🏎", "🛵", "🚀", "🛳", "🚕", "🚙", "🚓", "🚑", "🚛", "🚜", "🚡", "🚠", "🚅", "🚂", "✈️", "🛸", "🏍", "🚁", "🛶", "⛵️", "🚊", "🛻", "🛴", "🚲"]
    
    @State var emojiCount = 6
    
    var body: some View {
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount], id: \.self)  { emoji in
                    CardView(content: emoji)
                }
            }
            HStack{
                remover
                Spacer()
                adicionar
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    var remover: some View{
        Button(action: {
            emojiCount -= 1
        }, label: {
            VStack{
                Text("remover")
            }
        })
    }
    var adicionar: some View{
        Button(action: {
            emojiCount += 1
        }, label: {
            VStack{
                Text("adicionar")
            }
        })
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
                shape.stroke(lineWidth: 3).fill()
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

