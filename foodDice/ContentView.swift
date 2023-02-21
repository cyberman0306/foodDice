//
//  ContentView.swift
//  foodDice
//
//  Created by yook on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShowResult = 0
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                } label: {
                    Image(systemName: "questionmark.app.fill")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
            }
            Spacer()
            if isShowResult > 0 {
                Text(defultMenuArr.randomElement()!)
            }
            Spacer()
            Button {
                isShowResult += 1
            } label: {
                Image(systemName: "circle.square.fill")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            Text("roll it!")
            Spacer()
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
