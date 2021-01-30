//
//  ContentView.swift
//  ForEach, List, ScrollView
//
//  Created by Alex on 30/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    let devices = ["desktopcomputer", "gamecontroller", "headphones", "keyboard", "tv"]
    let maxWidth = UIScreen.main.bounds.width
    let maxHeight = UIScreen.main.bounds.height

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(devices, id: \.self){ device in
                        ListRow(text: device)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListRow: View{
    
    let text: String
    
    var body: some View{
        HStack{
            
            Image(systemName: text)
                .font(.system(size: 100))
        }
    }
}
