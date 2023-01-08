//
//  WelcomeScreenView.swift
//  TrackCals
//
//  Created by Raphael Palacio on 1/8/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
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
                            Button("Sign Up"){
                                // Logic to sign up for an account and go to the next screen
                            }
                            Button("Log In"){
                                // Logic to bring user to the log in screen
                            }
                        
                            
                        }
                    }
                    
                }
            }
    }

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
