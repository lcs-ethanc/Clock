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
            Divider()
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
                AlarmView(timeZoneDiff: "Today, +0HRS", city: "Ottawa", time: "6:35", APM: "AM")
                
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


struct AlarmView: View {
    let timeZoneDiff: String
    let city: String
    let time: String
    let APM: String
    
    var body: some View {
 
        HStack{
            
            VStack(alignment: .leading){
                Text("\(timeZoneDiff)")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                Text("\(city)")
                    .font(.system(size: 30))
            }
            Spacer()
            
            HStack(alignment: .firstTextBaseline){
                Text("\(time)")
                    .fontWeight(.thin)
                    .font(.system(size: 60))
                Text("\(APM)")
                    .fontWeight(.thin)
                    .font(.system(size: 40))
            }
            
        }
        .padding(.bottom,0.5)
    }
}
#Preview {
    LandingView()
}
