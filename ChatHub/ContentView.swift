//
//  ContentView.swift
//  ChatHub
//
//  Created by Gurtej Singh on 2024-03-23.
//

import SwiftUI

struct ContentView: View {
    @State var isLogin = false
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Picker(selection: $isLogin, label: Text("Picker")){
                        Text("Login").tag(true)
                        Text("Register").tag(false)
                    }.pickerStyle(.segmented)
                    if !isLogin{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(Image(systemName: "person.fill")).font(.system(size: 64))
                        })
                    }
                    
                    
                    Group{
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .textInputAutocapitalization(.none)
                        SecureField("Password", text: $password)
                    }
                    .padding(12)
                    .background(.white)
                    
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack{
                            Spacer()
                            Text(isLogin ? "Login" : "Register").font(.system(size: 18).bold()).foregroundStyle(.white).padding(13)
                            Spacer()
                        }.background(.blue)
                        
                    })
                    
                }.padding()
                
            }.navigationTitle(isLogin ? "Login" : "Register")
                .background(Color(uiColor: .systemGray5))
        }
    }
}

#Preview {
    ContentView()
}
