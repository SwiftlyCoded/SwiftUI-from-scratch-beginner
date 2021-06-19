//
//  ContentView.swift
//  Color, Custom Modifiers, Gradients
//
//  Created by Alex on 18/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    //255, 219, 13
    
    let myColor = Color(red: 255 / 255, green: 219 / 255, blue: 13 / 255)
    let myBetterColor = Color.rgb(r: 255, g: 219, b: 13)
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.random())
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.myOrange)
        }
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
    // RGB 255, 107, 13
    static let myOrange = rgb(r: 255, g: 107, b: 13)
    
    static func random() -> Color{
        return Color.rgb(r: Double.random(in: 0...255), g: Double.random(in: 0...255), b: Double.random(in: 0...255))
    }
}
