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
            Text("World Clock")
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
                }
        }
    }


#Preview {
    LandingView()
}
