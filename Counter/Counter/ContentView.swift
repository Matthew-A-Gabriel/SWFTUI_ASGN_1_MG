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
        //Text and showing count
        VStack {
            Text("Click buttons below to change the counter ")
            Text("\(count)")
            //styling
                .padding()
        }
            //Buttons and Stuff
        HStack{
            //Increase button
            Button(action: {
                increase()
            }, label:{
                //Text and styling
                Text("Increment")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            })
            //Decrease Button
            Button(action: {
                decrease()
            }, label:{
                //Text and styling
                Text("Decrement")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
    //Functions and stuff
    func increase(){
        //Increase but doesn't go above 50
        if (count != 50) {
            count += 1
        }
        else{
            return
        }
    }
    func decrease(){
        //Prevent going below 0
        if count != 0 {
            count += -1
        }
        else{
            return
        }
    }
}

#Preview {
    ContentView()
}



