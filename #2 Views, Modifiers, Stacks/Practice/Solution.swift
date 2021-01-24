//
//  ContentView.swift
//  Views, Modifiers, Stacks
//
//  Created by Alex on 24/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Logo()
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
                .shadow(radius: 8)
            
            Text("Swiftly Coded")
                .foregroundColor(.black)
                .font(.system(size: 35, weight: .bold))
            
            HStack{
                Image("xcode")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                Image("youtube")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
            }
            
            Text("Subscribe!")
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(15)
                .padding(.top)
        }
    }
}
