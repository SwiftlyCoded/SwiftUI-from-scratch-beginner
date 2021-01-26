//
//  ContentView.swift
//  Shapes, Variables, SF Symbols
//
//  Created by Alex on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleView(text: "Stop", width: 200, fontSize: 30, color: .red)
            CircleView(text: "Ready", width: 150, fontSize: 25, color: .orange)
            CircleView(text: "Go", width: 100, fontSize: 20, color: .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CircleView: View{
    
    let text: String
    var width: CGFloat = 200
    let fontSize: CGFloat
    let color: Color
    
    var body: some View{
        VStack {
            Circle()
            Text(text)
                .font(.system(size: fontSize))
        }.frame(width: width, height: width)
        .foregroundColor(color)
    }
}
