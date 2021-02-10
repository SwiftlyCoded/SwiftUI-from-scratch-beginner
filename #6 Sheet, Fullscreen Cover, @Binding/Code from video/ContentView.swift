//
//  ContentView.swift
//  View Transitions
//
//  Created by Alex on 10/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showing = false
    
    var body: some View {
        VStack {
            Text("First View")
                .padding()
                .fullScreenCover(isPresented: $showing){
                    RedView(showing: $showing)
            }
            
            Button(action: {
                showing.toggle()
            }){
                Text("show sheet") 
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RedView: View {
    
    @Binding var showing: Bool
    
    var body: some View {
        Color.red
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                showing.toggle()
            }
    }
}
