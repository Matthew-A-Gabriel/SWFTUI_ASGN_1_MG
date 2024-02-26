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
//Text and Stuff
        VStack {
            Text("Click buttons below to change the counter ")
            Text("\(count)")
                .padding()
        }
//Buttons and Stuff
            HStack{
//Increase
            Button(action: {
              count += 1
            }, label:{
                Text("Increment")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            })
//Decrease
            Button(action: {
//Prevent going below 0
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
