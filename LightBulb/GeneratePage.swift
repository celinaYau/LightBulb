//
//  GeneratePage.swift
//  LightBulb
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct GeneratePage: View {
    
    @State private var idea = "Idea:"
    
    @State private var image = "Image"
    
    @Binding var mealType: String
    
    let sample : [Recipes] = [
        Recipes(name: "Strawberry Chia Smoothie", mealtype: "Breakfast", lactoseFree: false, vegan: false, vegetarian: true, halal: false, kosher: false, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    ]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Spacer()
                
                Text(mealType)
                    .font(.title)
                Spacer()
                
                NavigationLink(destination: AllergyView()) {
                    Text("Dietary Restrictions/ Allergies")
                }
                
                Spacer()
                
                Text(idea)
                
                Spacer()
                
                Text(image)
                
                Spacer()
                
                Button("Generate") {
                    
                    //change image var and idea var
                
                }
                
                
                
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

class Recipes {
    var name: String
    var mealtype: String
    var lactoseFree: Bool
    var vegan: Bool
    var vegetarian: Bool
    var halal: Bool
    var kosher: Bool
    var glutenFree: Bool
    var seafood: Bool
    var shellfish: Bool
    var treenuts: Bool
    var peanuts: Bool
    var wheat: Bool
    var eggs: Bool
    var soy: Bool
    
    init(name: String, mealtype: String, lactoseFree: Bool, vegan: Bool, vegetarian: Bool, halal: Bool, kosher: Bool, glutenFree: Bool, seafood: Bool, shellfish: Bool, treenuts: Bool, peanuts: Bool, eggs: Bool, wheat: Bool, soy: Bool) {
        self.name = name
        self.mealtype = mealtype
        self.lactoseFree = lactoseFree
        self.vegan = vegan
        self.vegetarian = vegetarian
        self.halal = halal
        self.kosher = kosher
        self.glutenFree = glutenFree
        self.seafood = seafood
        self.shellfish = shellfish
        self.treenuts = treenuts
        self.peanuts = peanuts
        self.eggs = eggs
        self.wheat = wheat
        self.soy = soy
        
    }
    
    var smoothie = Recipes(name: "Strawberry Chia Smoothie", mealtype: "Breakfast", lactoseFree: false, vegan: false, vegetarian: true, halal: false, kosher: false, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    
    var omelet = Recipes(name: "Herbed Spanish Omelet", mealtype: "Breakfast", lactoseFree: true, vegan: false, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: true, wheat: false, soy: false)
    
    var lemonMuffins = Recipes(name: "Lemon Poppyseed Muffin", mealtype: "Breakfast", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: false, seafood: false, shellfish: false, treenuts: true, peanuts: false, eggs: true, wheat: true, soy: false)
    
    var overnightOats = Recipes(name: "Peanut Butter Overnight Oats", mealtype: "Breakfast", lactoseFree: true, vegan: false, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: true, eggs: false, wheat: false, soy: false)
    
    var pbCup = Recipes(name: "No Bake Peanut Butter Cup", mealtype: "Breakfast", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: true, peanuts: true, eggs: false, wheat: false, soy: false)
    
    var burrito = Recipes(name: "Burrito Bowl", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    
    
    var tacos = Recipes(name: "Chicken Tacos", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: false, vegetarian: false, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    
    var pasta = Recipes(name: "Chicken/Cauliflower Pasta", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: false, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: true, soy: false)
    
    var stirFry = Recipes(name: "Vegetable Stir Fry", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: false, glutenFree: false, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    
    var frittata = Recipes(name: "Stovetop Frittata", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: false, vegetarian: true, halal: true, kosher: true, glutenFree: false, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: true, wheat: true, soy: false)
    
    var nut = Recipes(name: "Nutty Cheesy Tortellini", mealtype: "Lunch/Dinner", lactoseFree: false, vegan: false, vegetarian: true, halal: true, kosher: false, glutenFree: false, seafood: false, shellfish: false, treenuts: true, peanuts: false, eggs: true, wheat: true, soy: false)
    
    var rice = Recipes(name: "Mushroom Salmon Cooked Rice", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: false, vegetarian: false, halal: true, kosher: false, glutenFree: false, seafood: true, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: true, soy: false)
    
    var onepan = Recipes(name: "One-Pan Chicken", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: false, vegetarian: false, halal: true, kosher: true, glutenFree: true, seafood: true, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    
    var cutlets = Recipes(name: "Chicken Cutlets and Zucchini Noodles", mealtype: "Lunch/Dinner", lactoseFree: false, vegan: false, vegetarian: false, halal: false, kosher: false, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    
    var curry = Recipes(name: "Sweet Potato Curry", mealtype: "Lunch/Dinner", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: false, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
    
    var cupcake = Recipes(name: "Vegan Cupcake", mealtype: "Dessert", lactoseFree: true, vegan: true, vegetarian: true, halal: true, kosher: true, glutenFree: true, seafood: false, shellfish: false, treenuts: false, peanuts: false, eggs: false, wheat: false, soy: false)
}

struct GeneratePage_Previews: PreviewProvider {
    static var previews: some View {
        GeneratePage(mealType: .constant(""))
        
    }
}
