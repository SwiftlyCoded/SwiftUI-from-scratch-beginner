//
//  Solution.swift
//  State, If, Switch
//
//  Created by Alex on 09/02/2021.
//

import SwiftUI

struct Solution: View {
    
    @State private var backgroundColor: Color = .white
    @State private var foregroundColor: Color = .black
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 25){
                
                Text("Background color")
                    .font(.system(size: 25, weight: .bold))
                
                HStack{
                    Button(action: {
                        backgroundColor = .blue
                    }){
                        Circle()
                            .foregroundColor(.blue)
                            .frame(width: 80, height: 80)
                            .overlay(Circle().stroke(Color.black, lineWidth: 3))
                    }
                    
                    Button(action: {
                        backgroundColor = .red
                    }){
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 80, height: 80)
                            .overlay(Circle().stroke(Color.black, lineWidth: 3))
                    }
                    
                    Button(action: {
                        backgroundColor = .green
                    }){
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 80, height: 80)
                            .overlay(Circle().stroke(Color.black, lineWidth: 3))
                    }
                }
                
                Text("Foreground Color")
                    .font(.system(size: 25, weight: .bold))
                
                HStack{
                    Button(action: {
                        foregroundColor = .blue
                    }){
                        Circle()
                            .foregroundColor(.blue)
                            .frame(width: 80, height: 80)
                            .overlay(Circle().stroke(Color.black, lineWidth: 3))
                    }
                    
                    Button(action: {
                        foregroundColor = .red
                    }){
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 80, height: 80)
                            .overlay(Circle().stroke(Color.black, lineWidth: 3))
                    }
                    
                    Button(action: {
                        foregroundColor = .green
                    }){
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 80, height: 80)
                            .overlay(Circle().stroke(Color.black, lineWidth: 3))
                    }
                }
                
                Button(action: {
                    backgroundColor = .white
                    foregroundColor = .black
                }){
                    Text("Reset do default")
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(20)
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.black)
                }
                
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus luctus egestas leo. Nulla est. Fusce suscipit libero eget elit. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Fusce wisi. Curabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien. Sed convallis magna eu sem. Pellentesque sapien. Aliquam erat volutpat. Fusce wisi. Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci. Mauris elementum mauris vitae tortor. Donec vitae arcu. Duis condimentum augue id magna semper rutrum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aliquam erat volutpat.")
                    .padding()
            }
        }.foregroundColor(foregroundColor)
    }
}

struct Solution_Previews: PreviewProvider {
    static var previews: some View {
        Solution()
    }
}
