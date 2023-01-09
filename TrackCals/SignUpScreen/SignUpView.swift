//
//  SignUpView.swift
//  TrackCals
//
//  Created by Raphael Palacio on 1/8/23.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.AppBackgroundColor
                    .ignoresSafeArea()
                Text("Welcome! Lets get started with your fitness goals! But first, lets make an account!")
                    .offset(y: -100)
                    .multilineTextAlignment(.center) // aligns the text in the center of the screen
                
                NavigationLink("Sign Up With Email", destination: SignUpWithEmailScreen())
                    .padding()
                    .frame(width: 300, height: 50)
                    .foregroundColor(.black)
                    .background(.cyan)
                    .cornerRadius(25)
                
            }
        }
    }
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
}
