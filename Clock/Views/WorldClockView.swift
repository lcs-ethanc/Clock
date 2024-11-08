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
                            .fontWeight(.thin)
                            .font(.system(size: 60))
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
                        Text("Today, +16HRS")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("Sydney")
                            .font(.system(size: 30))
                    }
                    Spacer()
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("10:35")
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
                        Text("Today, +9HRS")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("Dubai")
                            .font(.system(size: 30))
                    }
                    Spacer()
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("3:35")
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
