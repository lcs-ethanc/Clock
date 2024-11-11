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
                    .font(.system(size:20))
                Spacer()
            }
            .padding(.leading,15) //matches x position of h stack to alarms
            .padding(.top,5) //space on top
            HStack{
                Text("No Alarm")
                    .foregroundColor(.gray)
                Spacer()
                Text("SET UP")
                    .foregroundColor(.orange) //text color
                    .padding(7) //adds padding around text
                    .background(Color.gray.opacity(0.4)) //colors the padding and background, opacity makes it darker
                    .cornerRadius(20) //rounds the corner
                    .padding(5)
            }
            .padding(.leading,15) //matches x position of h stack to alarms
            .padding(.top,5) //space on top


            VStack{
                HStack{
                    Text("Other")
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.bottom,0.2)
                AlarmView(time: "6:35", APM: "AM")
                AlarmView(time: "8:15", APM: "AM")
                AlarmView(time: "9:00", APM: "AM")
                AlarmView(time: "9:15", APM: "AM")
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
    let time: String
    let APM: String
    
    var body: some View {
 
        HStack{
            
            VStack(alignment: .leading){
                HStack(alignment: .firstTextBaseline, spacing:4){// Spacing controls amount of space between elements in H Stack, firsttextbaseline makes all of them vertically aligned with the first text
                    Text("\(time)")
                        .fontWeight(.light)
                        .font(.system(size: 40))
                    Text("\(APM)")
                        .fontWeight(.light)
                        .font(.system(size: 25))
                }
                Text("Alarm")
                    .font(.system(size: 15))
 
            }
            Spacer()
            
            Image(systemName: "switch.2")
                .font(.system(size:30))


            
            
        }
        .padding(.bottom,0.5)
    }
}
#Preview {
    LandingView()
}
