//
//  ChoosingView.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ChoosingView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Text("How would you like to choose your idea?")
                    .padding()
                
                NavigationLink(destination: TypeView()) {
                    Text("Meal Type")
                    
                    
                        .toolbar {
                            ToolbarItemGroup(placement:.status) {
                                NavigationLink(destination: ContentView()) {
                                    Image(systemName: "house.fill")
                                
                                    
                                }
                    
                                
                                
                                
                                
                            }
                            
                            
                            
                        }
                }
            }
        }
    }
}

struct ChoosingView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingView()
    }
}
