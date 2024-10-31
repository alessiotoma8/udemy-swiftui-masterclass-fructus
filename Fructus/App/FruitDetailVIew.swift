//
//  FruitDetailVIew.swift
//  Fructus
//
//  Created by Alessio Toma on 30/10/24.
//

import SwiftUI

struct FruitDetailVIew: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[0])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }.navigationTitle(fruit.title).navigationBarTitleDisplayMode(.inline).navigationBarHidden(true)
            }.edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(.stack)
    }
}

#Preview {
    FruitDetailVIew(fruit: fruitsData[0])
}
