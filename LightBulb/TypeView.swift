//
//  TypeView.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct TypeView: View {
    
    @State var mealType = ""
    var body: some View {
        
        
        NavigationStack {
            
            VStack {
                
                Text("Meal Types")
                    .font(.largeTitle)
                
                Spacer()
                    .frame(height: 100.0)
                
                VStack {
                    NavigationLink(destination: GeneratePage(mealType: $mealType)) {
                        Text("Breakfast")
                    }
                        .simultaneousGesture(TapGesture().onEnded{ mealType = "Breakfast"})
                    
                    Spacer()
                    
                    NavigationLink(destination: GeneratePage(mealType: $mealType)) {
                        Text("Lunch/Dinner")
                        }
                        .simultaneousGesture(TapGesture().onEnded{ mealType = "Lunch/Dinner"})
                    
                   
                    
                    Spacer()
                    
                    NavigationLink(destination: GeneratePage(mealType: $mealType)) {
                        
                        Text("Dessert")
                        
                        }
                    
                   
                        .simultaneousGesture(TapGesture().onEnded{ mealType = "Dessert"})
                
                        
                    
                    Spacer()
                    
                    NavigationLink(destination: GeneratePage(mealType: $mealType)) {
                        
                        Text("Sides") }
                    
                    .simultaneousGesture(TapGesture().onEnded{ mealType = "Sides"})
                        }
                    }
                    
                    .toolbar {
                        ToolbarItemGroup(placement:.status) {
                            NavigationLink(destination: ContentView()) {
                                Image(systemName: "house.fill")
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 50.0)
                    
                    
                    
                    
                    
                    
                    
                }
            }
        }
    
            
            struct TypeView_Previews: PreviewProvider {
                static var previews: some View {
                    TypeView()
                }
            }
        
