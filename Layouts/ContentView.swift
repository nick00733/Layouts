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
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()

            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }

                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
