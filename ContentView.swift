//
//  ContentView.swift
//  AppDemo1
//
//  Created by Kyley Jones on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "smiley")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome to the Smiley App")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .padding()
        
        NavigationView {
            List {
                    NavigationLink("Home", destination: {
                        VStack {
                            Text("Welcome Home")
                            Image(systemName: "house")
                            Button(action: {
                                // Code to execute when the button is tapped
                                print("Button tapped!")
                            }) {
                                Text("Click Here")
                                    .padding(10)
                                    .background(Color.green)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(20)
                            }
                            
                        }
                    })
                
                    NavigationLink("Contact Us", destination: {
                        VStack {
                            Text("Please Contact Us")
                            Image(systemName: "phone")
                            Text("000-000-0000")
                            
                        }
                    })
                
//                    NavigationLink("Feedback", destination: {
//                        VStack {
//                            Text("How do you like our app?")
//                            Image(systemName: "pencil")
//                            TextField("Enter here...", text: $textInput)
//                                .padding()
//                                .textFieldStyle(RoundedBorderTextFieldStyle())
//                            
//                        }
//                    })
                }
                .navigationTitle("Main Menu")
            }
            
        }
    }

#Preview {
    ContentView()
}
