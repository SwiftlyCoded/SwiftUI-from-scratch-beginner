//
//  ContentView.swift
//  Views, Modifiers, Stacks
//
//  Created by Alex on 24/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack{
            Logo()
            Logo()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo: View{
    var body: some View{
        VStack{
            Image("logo")
                .resizable()
                .frame(width: 300, height: 300)
            
            Text("Swiftly Coded")
                .foregroundColor(.green)
        }
    }
}
