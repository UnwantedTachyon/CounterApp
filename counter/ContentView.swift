//
//  ContentView.swift
//  counter
//
//  Created by Gurmeet Singh on 23/03/20.
//  Copyright © 2020 Harshdeep Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var number:Int = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 200)
        {
            Text("Counter: \(number)").font(.system(size: 40)).position(x: 205, y: 200)
            Button(action: {
                self.number += 1})
            {
                HStack {
                
                    Image("next").resizable()
                        .frame(width: 40, height: 40)
                        .font(.title)
                    Text("Count")
                        .fontWeight(.bold)
                        .font(.title)
                }
                .frame(minWidth: 0, maxWidth: 175, minHeight: 0, maxHeight: 30)
                .padding()
                .background(Color.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                
                
            }.position(x: 205, y: 80)
            
            
            Button(action: {
                self.number = 0})
            {
                HStack {
                    Image("refresh").resizable()
                        .frame(width: 28.0, height: 28.0)
                        .font(.title)
                    Text("Reset").font(.system(size: 20))
                        .fontWeight(.semibold)
                        .font(.title)
                      
                }
                .frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 20)
                .padding()
                .background(Color.red)
                .cornerRadius(20)
                .foregroundColor(.white)
                    
                }.position(x: 205, y: 20)
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
