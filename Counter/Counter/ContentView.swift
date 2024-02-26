//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    //Variable
    @State private var count: Int = 0
    var body: some View {
        //Vstack
        VStack {
            //Text explaination
            Text("Click buttons below to change the counter ")
            //display count
            Text("\(count)")
            //styling for variable count
                .padding()
        }
        //Hstack
        HStack{
            //Increase button
            Button(action: {
                // Call increase Function
                increase()
                //Label
            }, label:{
                //Text for button
                Text("Increment")
                    //Padding for Button
                    .padding()
                    //background color for button
                    .background(Color.blue)
                    //text color for button
                    .foregroundColor(Color.white)
                    //Corner radius for button
                    .cornerRadius(10)
            })
            //Decrease Button
            Button(action: {
                //Call decrease function
                decrease()
                //label
            }, label:{
                //Text for Button
                Text("Decrement")
                //Padding for Button
                .padding()
                //background color for button
                .background(Color.blue)
                //text color for button
                .foregroundColor(Color.white)
                //Corner radius for button
                .cornerRadius(10)
        })
        }
        .padding()
    }
    //Functions and stuff
    //increase function
    func increase(){
        //if so that it doesn't go over 50
        if (count != 50) {
            //add 1 if condition is met
            count += 1
        }
        //otherwise
        else{
            //makes it return
            return
        }
    }
    //decrease function
    func decrease(){
        //if so that it doesn't go below 0
        if count != 0 {
            //subtract 1 if condition is met
            count += -1
        }
        //otherwise
        else{
            //makes it return
            return
        }
    }
}

#Preview {
    ContentView()
}



