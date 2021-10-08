//
//  AppDelegate.swift
//  Memorize
//
//  Created by Jonas on 21/09/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene{
        WindowGroup{
            ContentView(viewModel: game)
        }
    }
}
