//
//  AllergyView.swift
//  LightBulb
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct AllergyView: View {
    
    @State var haslactose = false
    @State var hasVegan = false
    @State var isvegetarian = false
    @State var ishalal = false
    @State var isKosher = false
    @State var isglutenFree = false
    @State var hasseafood = false
    @State var hasshellfish = false
    @State var hastreenuts = false
    @State var haspeanuts = false
    @State var haswheat = false
    @State var haseggs = false
    @State var hassoy = false
    
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Group{
                    Text("Dietary Restrictions/Allergies")
                        .font(.title)
                    
                    Spacer()
                    
                    Toggle(isOn: $haslactose) {
                        Text("Lactose Free")
                            .font(.title2)
                    }
                    
                    
                    
                    Toggle(isOn: $hasVegan) {
                        Text("Vegan")
                            .font(.title2)
                        
                        
                    }
                    
                }
                
                 .padding(.leading)
                
                Group {
                                Toggle(isOn: $isvegetarian) {
                                    Text("Vegetarian")
                                        .font(.title2)
                
                                }
                
                               
                
                                Toggle(isOn: $ishalal) {
                                    Text("Halal")
                                        .font(.title2)
                
                                }
                               
                                Toggle(isOn: $isKosher) {
                                    Text("Kosher")
                                        .font(.title2)
                        
                    }
                                }
                
                .padding(.leading)
                
                Group {
                                
                                Toggle(isOn: $isglutenFree) {
                                    Text("Gluten Free")
                                        .font(.title2)
                
                                }
                            
                                Toggle(isOn: $hasseafood) {
                                    Text("Seafood")
                                        .font(.title2)
                                }
                    }
                
                  .padding(.leading)
                
                
                Group {
                    Toggle(isOn: $hastreenuts) {
                        Text("Tree Nuts")
                            .font(.title2)
                        
                    }
                    
                    //  .padding(.leading)
                    
                    Toggle(isOn: $haspeanuts) {
                        Text("Peanuts")
                            .font(.title2)
                        
                    }
                    
                    //  .padding(.leading)
                    
                    Toggle(isOn: $haswheat) {
                        Text("Wheat")
                            .font(.title2)
                        
                    }
                    
                    //  .padding(.leading)
                    
                }
                
                .padding(.leading)
                
                
                Group {
                    Toggle(isOn: $haseggs) {
                        Text("Eggs")
                            .font(.title2)
                        
                    }
                    // .padding(.leading)
                    
                    Toggle(isOn: $hassoy) {
                        Text("Soy")
                            .font(.title2)
                        
                    }
                   
                    
                    }
                .padding(.leading)
                
                NavigationLink(destination: GeneratePage(mealType: .constant(""))) {
                   Text("Submit")
                   
                    
               }
                
                .padding(.leading)
                
            }
        } // ns
    }
    
}
struct AllergyView_Previews: PreviewProvider {
    static var previews: some View {
        AllergyView()
    }
}
