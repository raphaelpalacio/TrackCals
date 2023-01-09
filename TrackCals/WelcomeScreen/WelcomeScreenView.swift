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
                                .offset(y: -101)
                            Text("TrackCals")
                                .font(.largeTitle)
                                .bold()
                                .padding()
                                .offset(y: -100)
                            NavigationLink("Sign Up", destination: SignUpView())
                                .frame(width: 300, height: 25)
                                .padding()
                                .foregroundColor(.black)
                                .background(.cyan)
                                .cornerRadius(10)
                            NavigationLink("Login", destination: LogInView())
                                .frame(width: 300, height: 25)
                                .padding()
                                .foregroundColor(.black)
                                .background(.cyan)
                                .cornerRadius(25)
                            
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
