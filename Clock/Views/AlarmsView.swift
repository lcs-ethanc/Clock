//
//  AlarmsView.swift
//  Clock
//
//  Created by Pak Ching Ethan Chen on 2024-11-08.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "bed.double.fill")
                Text("Sleep I Wake Up")
                    .fontWeight(.semibold)
                    .font(.system(size:15))
                Spacer()
            }
            .padding(.leading,15) //matches x position of h stack to alarms
            .padding(.top,15) //space on top

            VStack{
                ExtractedView(timeZoneDiff: "Today, +0HRS", city: "Ottawa", time: "6:35", APM: "AM")
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("Today, -3HRS")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("Vancouver")
                            .font(.system(size: 30))
                    }
                    Spacer()
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("3:35")
                            .fontWeight(.thin) //weight of font
                            .font(.system(size: 60)) //size of font
                        Text("AM")
                            .fontWeight(.thin)
                            .font(.system(size: 40))
                    }
                    
                }
                .padding(.bottom,0.5)
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("Today, +6HRS")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("Hamburg")
                            .font(.system(size: 30))
                    }
                    Spacer()
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("12:35")
                            .fontWeight(.thin)
                            .font(.system(size: 60))
                        Text("PM")
                            .fontWeight(.thin)
                            .font(.system(size: 40))
                    }
                    
                }
                .padding(.bottom,0.5)
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("Today, -1HRS")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("Mexico City")
                            .font(.system(size: 30))
                    }
                    Spacer()
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("5:35")
                            .fontWeight(.thin)
                            .font(.system(size: 60))
                        Text("AM")
                            .fontWeight(.thin)
                            .font(.system(size: 40))
                    }
                    
                }
                .padding(.bottom,0.5)
                Spacer()
            }
            
            .navigationTitle("Alarms")

            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button("Edit") {
                        // Does nothing right now
                    }
                    
                }
                
                ToolbarItem(placement: .primaryAction) {
                    
                    Button {
                        // Does nothing right now
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
            }
            
            
            .padding()
        }
    }
}


#Preview {
    LandingView()
}
