//
//  ContentView.swift
//  SwiftUI-Login
//
//  Created by Doniyorbek on 12/16/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var loginString = ""
    @State private var passwordString = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            Text("Username")
                .foregroundColor(.white)
            TextField("john_wick", text: $loginString)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password")
                .foregroundColor(.white)
            SecureField("p@ssw6d", text: $loginString)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            Button(action: {
                print("login: \(loginString) | password: \(passwordString)")
            }, label: {
                HStack {
                    Spacer()
                    Text("Login")
                    Spacer()
                }
            })
            
            Spacer()
        }
        .padding()
        .background(Image("bg_login")
        .resizable()
        .scaledToFill()
        .clipped())
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
