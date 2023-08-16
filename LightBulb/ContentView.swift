//
//  ContentView.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            
            
            VStack {
                Text("Idea Generator")
                    .font(.title)
                
                    .fontWeight(.heavy)
                    .foregroundColor(Color.yellow)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                
                
                NavigationLink(destination: ChoosingView()) {
                    Text("Food")
                        .foregroundColor(Color("ye"))
                }
                
            }
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
