//
//  WorldClockView.swift
//  Clock
//
//  Created by Pak Ching Ethan Chen on 2024-11-08.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ExtractedView(timeZoneDiff: "Today, +0HRS", city: "Ottawa", time: "6:35", APM: "AM")
                ExtractedView(timeZoneDiff: "Today, -3HRS", city: "Vancouver", time: "3:35", APM: "AM")
                ExtractedView(timeZoneDiff: "Today, +6HRS", city: "Hamburg", time: "12:35", APM: "PM")
                ExtractedView(timeZoneDiff: "Today, +16HRS", city: "Sydney", time: "10:35", APM: "PM")
                ExtractedView(timeZoneDiff: "Today, +9HRS", city: "Dubai", time: "3:35", APM: "PM")
                ExtractedView(timeZoneDiff: "Today, -1HRS", city: "Mexico City", time: "5:35", APM: "AM")
                
                Spacer()
            }
            
            .navigationTitle("World Clock")
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

struct ExtractedView: View {
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
