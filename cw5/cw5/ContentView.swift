//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            ExtractedView(counters: $counter[0],name: "الحمدالله")
            ExtractedView(counters: $counter[1], name:"أستغفر الله العظيم"  )
            ExtractedView(counters:$counter[2], name: "سبحان الله")
           
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var counters: Int
                
                
                var name: String
    var body: some View {
        HStack{
            Text("\(name)").font(.title)
            Spacer()
            Text("\(counters)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    counters += 1
                }
        }.padding()
    }
}
