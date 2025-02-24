//
//  ContentView.swift
//  SWIFT UI PRACTICE
//
//  Created by StudentPM on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var num: Int = 0
    
    var body: some View {
        //Vertical stack
        VStack {
            
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            
//            Text("Hello!")
            
            
            Text("Click buttons below to change the counter")
            //Text title
            
            Text("\(num)")
                .padding()
            //The counter
            
            HStack{
                //putting it in a HStack to keep it horizontal
                
                //Button for incrementing
                Button(action: {
                    increment()
                }, label: {
                    Text("Increment")
                    //styling
                        .padding(10)
                        .background(Color.blue)
                    //Background color blue
                        .foregroundColor(.white)
                    //Font is white
                        .cornerRadius(5)
                    //ROUND THE CORNERS
                })
                
                //Button for decrementing
                Button(action: {
                    decrement()
                }, label: {
                    Text("Decrement")
                    //styling
                        .padding(10)
                        .background(Color.blue)
                    //Background color blue
                        .foregroundColor(.white)
                    //Font is white
                        .cornerRadius(5)
                    //ROUND THE CORNERS
                })
            }
            
        }
        //starter code
        .padding()
    }
    
    func increment(){
        //checking if its over 50 or not
        if(num>=50){
            //doesn't add anything
            num += 0
        }
        else{
            //adds 1 if its below 50
            num += 1
        }
        
    }
    
    func decrement(){
        //checking if its 0 or below
        if(num<=0){
            //doesn't subtract anything
            num -= 0
        }
        else{
            //subtracts 1
            num -= 1
        }
    }
}

#Preview {
    ContentView()
}
