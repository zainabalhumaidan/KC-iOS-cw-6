//
//  ContentView.swift
//  day 6 project1
//
//  Created by Zainab Alhumaidan on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var BMI = Double()
    @State var status = ""
    var body: some View {
        VStack {
            Image("scale")
                .resizable()
                .scaledToFit()
                .frame(width: 300.0, height: 300.0)
            Text(" What is your weight and height ?")
                .font(.title)
                .fontWeight(.semibold)
            TextField("enter ur weight", text: $weight)
            TextField("enter ur height", text: $height)
            Button(action: {
                BMIcalc(height: Double(height) ?? 1.0, weight: Double(weight) ?? 1.0)
                
                
            }, label: {
                Text("calculate")
                    .foregroundColor(.white)
            })
            .frame(width: 200.0, height: 50.0)
            .background (Color.cyan)
            .cornerRadius(10)
            Text("BMI = \(BMI)")
            Text("status = \(status)")
            
        }
        
    }
    func BMIcalc(height: Double, weight: Double)
    { @State var totals = weight / (height * height)
        if totals <= 20{
            status = "skinny"
            BMI = weight / (height * height)
        }
        else if totals <= 25{
            status = "avarge"
            BMI = weight / (height * height)
        }
        else{ status = "above avarge"}
        BMI = weight / (height * height)
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
