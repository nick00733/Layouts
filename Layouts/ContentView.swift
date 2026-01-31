//
//  ContentView.swift
//  Layouts
//
//  Created by Nick Nedjat on 30.01.26.

import SwiftUI

struct ContentView: View {
    @State private var messageString =
        "When the Genius Bar Needs Help, They Call You!"

    var body: some View {
            VStack {
                Text("You have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.goldBC)
                    .background(.maroonBC)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                Spacer()
                Spacer()
                HStack {
                    Button("Awesome") {
                        messageString = "You Are Awesome!"
                    }
                    Spacer()
                    Button("Great") {
                        messageString = "You Are Great!"
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .background(
                Gradient(colors: [.white, .blue, .red])
            )
    }
}

#Preview {
    ContentView()
}
