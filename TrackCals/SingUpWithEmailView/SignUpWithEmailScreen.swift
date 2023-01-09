//
//  SignUpWithEmailScreen.swift
//  TrackCals
//
//  Created by Raphael Palacio on 1/8/23.
//

import SwiftUI

struct SignUpWithEmailScreen: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail = 0
    @State private var wrongPassowrd = 0
    @State private var showingNextScreen = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.AppBackgroundColor
                    .ignoresSafeArea()
                Text("Let's Create Your Account! First Enter an Email and a Secure Password!")
                    .offset(y: -170)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 25))
                VStack{
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail)) // This is for when the user enters an incorrect email
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassowrd)) // This is for when the user enters an incorrect email
                    SecureField("Re - Enter Password", text: $password)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassowrd)) // This is for when the user enters an incorrect email
                    NavigationLink("Next", destination: GoalsSelectorView())
                        .offset(y: 100)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        
                }
                
                
                
            }
        }
    }
}

struct SignUpWithEmailScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpWithEmailScreen()
    }
}
