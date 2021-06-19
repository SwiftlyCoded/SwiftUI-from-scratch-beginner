//
//  ContentView.swift
//  User Input, Form, ColorPicker
//
//  Created by Alex on 18/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    @State private var birthdate = Date()
    
    @State private var height: CGFloat = 150.0
    
    @State private var agreedToTerms = false
    
    @State private var option = "beginner"
    
    @State private var description = "write a description"
    
    @State private var hours = 3
    
    @State private var color: Color = .black
    
    let options = ["beginner", "intermidiate", "advanced", "pro"]
    
    let maxAge = Calendar.current.date(byAdding: .year, value: -120, to: Date())
    let minAge = Calendar.current.date(byAdding: .year, value: -15, to: Date())
    
    var body: some View {
        Form {
            Section(header:
                        HStack{
                            Image(systemName: "person.circle.fill")
                            Text("Login data")
                        }
            
            ){
                TextField("username", text: $username)
                
                SecureField("password", text: $password)
            }
            
            Section{
                DatePicker("pick your birthdate", selection: $birthdate, in: maxAge!...minAge!, displayedComponents: .date)
            }
            
            Section{
                Text("Pick your height")
                Slider(value: $height, in: 120...220, step: 1)
                Text("\(Int(height)) cm")
            }

            Section{
                Toggle(isOn: $agreedToTerms){
                    Text("agree to terms")
                }
            }
            
            Section{
                Picker("show coding skills", selection: $option){
                    ForEach(options, id: \.self){ option in
                        Text(option)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                TextEditor(text: $description)
                    .frame(width: 300, height: 200)
                    .onTapGesture {
                        description = ""
                    }
                    .border(Color.black, width: 1)
            }
            
            
            Stepper(value: $hours, in: 0...24){
                Text("Howmany times a day u code? \(hours)")
            }
            
            ColorPicker("choose your color", selection: $color)
        }
        .foregroundColor(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
