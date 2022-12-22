//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by Ada Yagiz Gur on 22.12.2022.
//

import SwiftUI

struct FruitNutriensView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutrient: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrient.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: GROUPBOX
    }
}
//MARK: - PREVIEW
struct FruitNutriensView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutriensView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
