//
//  LoginScreen.swift
//  TrackCals
//
//  Created by Raphael Palacio on 1/8/23.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLogInScreen = false
    @State var title: String = "Login"
    var body: some View{
        NavigationView{
            ZStack{
                Color.AppBackgroundColor
                    .ignoresSafeArea()
                VStack{
                    Image("ic-biker")
                        .scaledToFit()
                    Text("TrackCals")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)// Hides the password
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                        authenticateUser(username: username, password: password)
                    }
                    
                    .frame(width: 300, height: 50)
                    .background(Color.AppBackgroundColor)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("You are loggedin@\(username)"), isActive: $showingLogInScreen){
                        EmptyView() // Insert view for after login
                    }
                    
                }
                
                
            }
            .navigationBarHidden(true)
            
        }
        
    }
    
    // Raw Authentication Function, 
    func authenticateUser(username:String, password: String){
        if username.lowercased() == "raphaelpalacio"{
            wrongUsername = 0
            if password.lowercased() == "abc123"{
                wrongPassword = 0
                showingLogInScreen
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}
    struct LoginScreen_Previews: PreviewProvider {
        static var previews: some View {
            LoginScreen()
        }
    }

