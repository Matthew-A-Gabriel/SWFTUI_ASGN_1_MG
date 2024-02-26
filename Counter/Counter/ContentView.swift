//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        VStack {
            Text("Click buttons below to change the counter ")
            Text("\(count)")
                .padding()
        }
            HStack{
            Button(action: {
              count += 1
            }, label:{
                Text("Increment")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            })
            Button(action: {
                if count != 0 {
                    count += -1
                }
                else{
                    return
                }
            }, label:{
                Text("Decrement")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
