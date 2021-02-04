//
//  ContentView.swift
//  State, If, Switch
//
//  Created by Alex on 04/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var number: Int = 0
    
    var body: some View {
        VStack{
            
            switch number{
            case 0:
                Text("First View")
            case 1:
                Text("Second View")
            default:
                Text("Third view")
            }
            
            
            Button(action: {
                number = Int.random(in: 0...2)
            }) {
                Text("switch view")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
