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
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("Today, 0+ hours")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("Ottawa")
                            .font(.system(size: 30))
                    }
                    Spacer()
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("6:35")
                            .fontWeight(.thin)
                            .font(.system(size: 60))
                        Text("AM")
                            .fontWeight(.thin)
                            .font(.system(size: 40))
                    }
                    
                }
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
