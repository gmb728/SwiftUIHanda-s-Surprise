//
//  ContentView.swift
//  SwiftUIHanda's Surprise
//
//  Created by Chang Sophia on 3/20/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counterMango = 0
    @State private var counterGuava = 0
    @State private var counterPassionFruit = 0
    @State private var counterAvacado = 0
    @State private var counterBanana = 0
    @State private var counterOrange = 0
    @State private var counterPineapple = 0
    
    
  
    var body: some View {
        ZStack{
         LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 0/255, green: 0/255, blue: 150/255), .purple, Color(.sRGB, red: 255/255, green: 120/255, blue: 32/255)]),startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
        VStack(spacing:-5){
            Text("$\(counterMango*136 + counterGuava*49 + counterPassionFruit*34 + counterAvacado*73 + counterBanana*36 + counterOrange*16 + counterPineapple*18)")
            .font(.system(size: 50, weight: .bold, design: .rounded))
                .foregroundColor(.white)
         .font(.system(size: 50, weight: .bold, design: .rounded))
              HStack(spacing:-10){
                CounterButton(counter: $counterMango, image: "mango", price: "$136.2")
                CounterButton(counter: $counterGuava, image: "guava", price: "$49.7")
                CounterButton(counter: $counterPassionFruit, image: "passionfruit", price: "$34.4")
                CounterButton(counter: $counterAvacado, image: "avacado", price: "$73.8")
            }
        HStack(spacing:-10){
           CounterButton(counter: $counterBanana, image: "banana", price: "$36.6")
            CounterButton(counter: $counterOrange, image: "orange", price: "$16")
            CounterButton(counter: $counterPineapple, image: "pineapple", price: "$18.4")
        }
            Image("handa")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width:300)
        }
    }
}
}
 struct CounterButton: View {
     @Binding
     var counter: Int
     var image: String
     var price: String
    
     var body: some View {
    
         Button(action: {
             self.counter += 1
         }) {
            VStack{
             Image(image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width:80)
             .overlay(
             Text("\(counter)")
                 .font(.system(size: 20, weight: .bold, design:.rounded))
                 .foregroundColor(.black)
                )
            Text("\(price)")
            .font(.system(size: 20, weight: .bold, design:.rounded))
            .foregroundColor(.orange)
             
            }
         }
     }
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
