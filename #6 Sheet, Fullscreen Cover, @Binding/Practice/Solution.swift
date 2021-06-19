//
//  ContentView.swift
//  Practice
//
//  Created by Alex on 19/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    let randomColors = [Color.random(), Color.random(), Color.random(), Color.random(), Color.random()]
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: randomColors), startPoint: .bottomLeading, endPoint: .topTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color{
    static func rgb(r: Double, g: Double, b: Double) -> Color{
        return Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    
    static func random() -> Color{
        return rgb(r: Double.random(in: 0...255), g: Double.random(in: 0...255), b: Double.random(in: 0...255))
    }
}
