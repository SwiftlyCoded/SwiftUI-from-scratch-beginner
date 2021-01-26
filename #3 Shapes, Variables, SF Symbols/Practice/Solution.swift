//
//  ContentView.swift
//  ShapesExercise
//
//  Created by Alex on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Circle()
                .foregroundColor(.blue)
                .frame(width: 500, height: 500)
            
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 250, height: 250)
                .cornerRadius(35)
            
            VStack{
                HStack{
                    Star()
                    Star()
                }
                HStack{
                    Star()
                    Star()
                }
            }
            
            Text("Great work!")
                .foregroundColor(.black)
                .font(.system(size: 35))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Star: View{
    var body: some View{
        Image(systemName: "star.fill")
            .padding()
            .font(.system(size: 60))
            .foregroundColor(.yellow)
    }
}
