//
//  GoalsSelectorView.swift
//  TrackCals
//
//  Created by Raphael Palacio on 1/9/23.
//

import SwiftUI

struct GoalsSelectorView: View {
    
    var items: [String] = [
        "Loose Weight", "Maintain Weight", "Gain Weight", "Gain Muscle", "Modify My Diet", "Manage Stress", "Increase Step Count"
    ]
    
    @State var selectedRows = Set<String>()
    @State var isEditing = false
        var body: some View {
            NavigationView{
                ZStack{
                    //Color.AppBackgroundColor
                       // .ignoresSafeArea()
                    //Text("Let's Start with Goals!")
                        //.offset(y: -300)
                       // .multilineTextAlignment(.center)
                        //.bold()
                        //.font(.system(size: 25))
                    
                    Text("Select up to three that are important to you")
                        .offset(y: -250)
                        .multilineTextAlignment(.center)
                        .listRowBackground(Color.AppBackgroundColor)
                    VStack{
                        List(selection: $selectedRows){ // Binding selectedRows
                            ForEach(items, id: \.self){item in // Binding selectedRows
                                Text(item)
                            }
                        }
                        .navigationTitle("Selected \(selectedRows.count) rows")
                        // add EditButton
                        //.navigationBarItems(trailing: Button(action: {
                        .navigationBarItems(trailing: Button(action:{
                            isEditing.toggle()
                        }, label:{
                            if self.isEditing{
                                Text("Done")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.red)
                            }else{
                                Text("Edit")
                                    .foregroundColor(Color.blue)
                            }
                        }))
                        // list style
                        .listStyle(.inset)
                        //environment
                        .environment(\.editMode, .constant(self.isEditing ? .active : .inactive))
                        // animation
                            .animation(.spring(), value: isEditing)
                        NavigationLink("Next", destination: PastScreenView())
                            .offset(y: 100)
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            
                    }
                }
                
            }
            }
        }

struct GoalsSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsSelectorView()
    }
}
