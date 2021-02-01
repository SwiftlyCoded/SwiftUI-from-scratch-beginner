//
//  Solution.swift
//  ForEach, List, ScrollView
//
//  Created by Alex on 01/02/2021.
//

import SwiftUI

struct Solution: View {
    
    let colors: [Color] = [.red, .blue, .orange, .yellow, .pink, .black, .purple, .green]
    
    var body: some View {
        VStack(spacing: 40){
            
            VStack {
                Text("1) This is a horizontal ScrollView")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.blue)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(0..<20, id: \.self){ i in
                            ColumnView(number: String(i + 1), color: colors.randomElement()!)
                        }
                    }
                }.frame(height: 200)
            }
            
            VStack {
                Text("2) This is a List with ForEach")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.blue)
                
                List(0..<20, id: \.self){ i in
                    RowView(number: String(i + 1), color: colors.randomElement()!)
                }
            }
        }
    }
}

struct Solution_Previews: PreviewProvider {
    static var previews: some View {
        Solution()
    }
}

struct ColumnView: View{
    
    let number: String
    let color: Color
    
    var body: some View{
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 200, height: 200)
                .padding()
            
            Text(number)
                .foregroundColor(.white)
                .font(.system(size: 100, weight: .bold))
        }
    }
}

struct RowView: View{
    
    let number: String
    let color: Color
    
    var body: some View{
        HStack{
            Text("This is row number")
            Image(systemName: "\(number).circle")
                .foregroundColor(color)
        }.font(.system(size: 18, weight: .bold))
    }
}
